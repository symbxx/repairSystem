<?php
namespace app\index\controller;

use think\Db;

class Oprate extends \app\index\controller\Common
{
    /*主页展示方法*/
    public function index()
    {
        $type_arr=Db::name('repair_type')->where('type',1)->where('hide',0)->select();
        $user=\app\index\model\User::where('username',session('user'))->find();
        $this->assign('type',$type_arr);
        $this->assign('user',$user);
        return $this->fetch();
    }

    /*查看报修记录的方法*/
    public function show_record(){
        if(request()->isGet()){
            return $this->fetch('record');
        }elseif(request()->isPost()){
            $sql=\app\index\model\RepairList::where('user',session('user'))
                ->field("FROM_UNIXTIME(create_time, '%Y-%m-%d %H:%i:%S') as create_time,content,linkman,message,id,statu,grade,address,linktel")
                ->limit(input('offset'),input('limit'))->buildSql();
            $record_list=\think\Db::query($sql."order by statu <> 3 , create_time desc ");
            foreach ($record_list as $k=>$item) {
                $statu="";
                switch($item['statu']){
                    case 0:
                        $statu="待处理";
                        break;
                    case 1:
                        $statu="维修中";
                        break;
                    case 2:
                        $statu="维修完成";
                        break;
                    case 3:
                        $statu="<span class=\"label label-danger\">待评价</span>";
                        break;
                    case 4:
                        $statu="评价完成";
                        break;
                }
                $record_list[$k]['status']=$statu;
            }
            return json(['total'=>count($record_list),'rows'=>$record_list]);
        }
    }
    /*查看保修记录详情的方法*/
    public function reply(){
        if(request()->isGet()){
            if($list=\app\index\model\RepairList::where('user',session('user'))->where('id',input('id'))->find()){
                $reply_list=\app\admin\model\Body::where('list_id',input('id'))->select();
                session('list_id',input('id'));
                $this->assign('reply_list',$reply_list);
                $this->success('获取成功','',$this->fetch('reply'));
            }else{
                json(['msg'=>'未找到信息','code'=>0]);
            }
        }elseif(request()->isPost()){
//            if(\app\admin\model\RepairList::where('id',session('list_id'))->value('close')){
//                json(['msg'=>'该报修已经关闭！','code'=>0]);
//            }
//            $list=\app\admin\model\RepairList::where('id',session('list_id'))->find();
//            $list->admin_new=1;
//            $list->user_new=0;
//            $list->save();
//            $data=[
//                'content'=>input('content'),
//                'is_admin'=>0,
//                'user'=>session('user'),
//                'list_id'=>session('list_id')
//            ];
//            if(\app\admin\model\Body::create($data)){
//                return json(['msg'=>'提交成功！','code'=>1]);
//            }else{
//                return json(['msg'=>'提交失败！','code'=>0]);
//            }
        }
    }
    /*提交保修信息的方法*/
    public function add_repair(){
        /*验证*/
        $validate=new \app\index\validate\Repair();
        if (!$validate->check(input())) {
            return json(['msg' => $validate->getError(), 'code' => 0]);
        }
        /*验证id是否存在*/
        if(!Db::name('repair_type')->where('id',input('type'))->find()){
            return json(['msg'=>'非法请求，用户信息已被记录','code'=>0]);
        }
        /*评价*/
        if(\app\index\model\RepairList::where('user',session('user'))->where('statu','3')->find()){
            return json(['msg'=>'有未评价维修，请评价！','code'=>2]);
        }
        /*报修间隔*/
        if($last=\app\index\model\RepairList::where('user',session('user'))->order('create_time desc')->value('create_time')){
            if((time()-$last)<300){
                return json(['msg'=>'频繁报修,报修失败!','code'=>0]);
            }
        }
        /*加数据库*/
        $data=input();
        $data['user']=session('user');
        $data['address']=input('campus')."-".input('building')."-".input('address');
        $repair=\app\index\model\RepairList::create($data);
        $body=[
            'content'=>input('content'),
            'user'=>session('user')
        ];
        $repair->body()->save($body);
        $user=\app\index\model\User::where('username',session('user'))->find();
        $user->allowField(true)->data(input())->save();
        return json(['msg' => '报修成功！', 'code' => 1]);
    }
    public function evaluate(){
        if(request()->isPost()){
            if($list=\app\index\model\RepairList::where('user',session('user'))->where('id',input('id'))->where('statu',3)->find()){
                \app\admin\model\Body::create([
                    'list_id'=>input('id'),
                    'content'=>'报修人评价完成，评分为'.input('score').'分',
                    'is_admin'=>0,
                    'user'=>session('user')
                ]);
                $list->grade=input('score');
                $list->statu=4;
                $list->save();
                return json(['msg'=>'评价成功！','code'=>1]);
            }else{
                return json(['msg'=>'未找到信息','code'=>0]);
            }
        }
    }
    public function method($type_id){
        if($article_list=\think\Db::name('article')->where('type',$type_id)->field(['title','id'])->select()){
            return json(['msg'=>'获取成功','data'=>$article_list,'code'=>1]);
        }else{
            return json(['msg'=>'获取失败','code'=>0]);
        }
    }
    public function method_detail($art_id){
        if($article=\think\Db::name('article')->where('id',$art_id)->find()){
            $this->assign('art',$article);
            return $this->fetch();
        }else{
            $this->redirect('/');
        }
    }
}
