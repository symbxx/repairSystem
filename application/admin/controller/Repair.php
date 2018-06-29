<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/18
 * Time: 20:50
 */
namespace app\admin\controller;

class Repair extends Common
{
    /*展示列表，带搜索功能*/
    public function show()
    {
        if (request()->isPost()) {
            $where=[];
            if (input('statu') != '') {
                $where['statu'] = input('statu');
                session('statu',input('statu'));
            }
            $r=new \app\admin\model\RepairList();
            $r->setEvaluate();
            $total = $r::where($where)->count();
            $list = $r::where($where)->order('statu asc')
                    ->whereLike('linkman|linktel|address|user',"%".input('search')."%")
                    ->limit(input('offset'), input('limit'))->select();
            $list=$this->resetList($list);
            return json(['total' => $total, 'rows' => $list]);
        } elseif (request()->isGet()) {
            $this->success('获取成功', '', $this->fetch());
        }
    }

    /*回复*/
    public function reply()
    {
        if (request()->isGet()) {
            /*修改报修状态*/
            $db = \app\admin\model\Body::where('list_id', input('id'));
            $user_record = \app\admin\model\RepairList::where('user', input('user'))->column('id');
            /*标记body为已经阅读*/
            $reply_list = \app\admin\model\Body::whereIn('list_id', $user_record)->order('create_time desc')->select();
            session('list_id', input('id'));
            $this->assign('reply_list', $reply_list);
            $this->assign('user_record', $user_record);
            $this->success('获取成功', '', $this->fetch());
        } elseif (request()->isPost()) {
            /*取消回复功能*/
//            $list=\app\admin\model\RepairList::where('id',session('list_id'))->find();
//            $list->admin_new=0;
//            $list->user_new=1;
//            $list->save();
//            $data=[
//                'content'=>input('content'),
//                'is_admin'=>1,
//                'user'=>session('username'),
//                'list_id'=>session('list_id')
//            ];
//            if(\app\admin\model\Body::create($data)){
//                return json(['msg'=>'回复成功！','code'=>1]);
//            }else{
//                return json(['msg'=>'回复失败！','code'=>0]);
//            }
        }
    }

    /*打印表格*/
    public function print_excel()
    {
        if(request()->isPost()){
            session('hide',input('post.columns/a'));
        }else{
            $list=\app\admin\model\RepairList::where('statu',session('statu'))->hidden(session('hide'))->select();
            if(!count($list)){
                $this->error('数据不足，无法生成');
            }
            $key_info=[
                'id'=>'序号',
                'type'=>'类型',
                'linkman'=>'联系人',
                'linktel'=>'联系电话',
                'user'=>'报修账户',
                'statu'=>'状态',
                'address'=>'地址',
                'content'=>'报修内容',
                'message'=>'留言',
                'grade'=>'评分',
                'create_time'=>'创建时间',
                'update_time'=>'修改时间',
            ];
            $key=array_keys($list->toArray()[0]);
            $info=[];
            foreach ($key as $item) {
                $info[$key_info[$item]]=$item;
            }
            $this->create_excel($info,$list);
        }

    }
    /*开始维修*/
    public function start_task()
    {
        if (request()->isPost()) {
            if (\app\admin\model\RepairList::where('id', input('id'))->update(['statu' => 1])) {
                \app\admin\model\Body::create([
                    'list_id' => input('id'),
                    'content' => '维修人员开始处理',
                    'is_admin' => 1,
                    'user' => session('username')
                ]);
                return json(['msg' => '修改成功！', 'code' => 1]);
            } else {
                return json(['msg' => '修改失败！', 'code' => 0]);
            }
        }
    }

    /*维修完成*/
    public function end_task()
    {
        if (request()->isGet()) {
            $type_list = \app\admin\model\Type::where('type', 0)->where('hide', 0)->select();
            $id_type   = \app\admin\model\RepairList::where('id',input('id'))->find()->types->title;
            session('list_id', input('id'));
            $this->assign('list', $type_list);
            $this->assign('type', $id_type);
            $this->success('获取成功', '', $this->fetch());
        } elseif (request()->isPost()) {
            if (\app\admin\model\RepairList::where('id', session('list_id'))->update(
                [
                    'statu' => 2,
                    'message' => input('message'),
                    'type' => input('type')
                ]
            )
            ) {
                \app\admin\model\Body::create([
                    'list_id' => session('list_id'),
                    'content' => '被维修人员处理完成,附加留言：' . input('message'),
                    'is_admin' => 1,
                    'user' => session('username')
                ]);
                return json(['msg' => '关闭成功！', 'code' => 1]);
            } else {
                return json(['msg' => '关闭失败！', 'code' => 0]);
            }
        }
    }

    /*关闭维修任务*/
    public function close_task()
    {
        if (request()->isPost()) {
            if (\app\admin\model\RepairList::where('id', input('id'))->update(['statu' => 3])) {
                \app\admin\model\Body::create([
                    'list_id' => input('id'),
                    'content' => '管理员关闭了该报修',
                    'is_admin' => 1,
                    'user' => session('username')
                ]);
                return json(['msg' => '关闭成功！', 'code' => 1]);
            } else {
                return json(['msg' => '关闭失败！', 'code' => 0]);
            }
        }
    }

    /*添加新维修任务，电话手动*/
    public function add_task()
    {
        if (request()->isGet()) {
            $type_arr = \app\admin\model\Type::name('repair_type')->where('type', 1)->where('hide', 0)->select();
            $this->assign('type', $type_arr);
            $this->success('获取成功', '', $this->fetch());
        } elseif (request()->isPost()) {
            $validate = new \app\index\validate\Repair();
            if (!$validate->scene('add_admin')->check(input())) {
                return json(['msg' => $validate->getError(), 'code' => 0]);
            }
            $address=input('address');
            try{
                $address=input('campus').input('building').$address;
            }catch(\Exception $e){}

            /*加数据库*/
            $data = input();
            $data['user'] = session('username');
            $data['address'] = $address;
            $repair = \app\admin\model\RepairList::create($data);
            $body = [
                'content' => input('content'),
                'user' => session('username')
            ];
            $repair->body()->save($body);
            return json(['msg' => '报修成功！', 'code' => 1]);
        }
    }

    public function delete_task()
    {
        if (request()->isPost()) {
            if (\think\Db::name('repair_list')->delete(input()['ids'])) {
                return json(['msg' => '删除成功！', 'code' => 1]);
            } else {
                return json(['msg' => '删除失败！', 'code' => 0]);
            }
        }
    }

    public function show_statistics()
    {
        if (request()->isGet()) {
            $s = input('?start') ? strtotime(input('start')) : (time()-3600*24*30);
            $e = input('?end') ? strtotime(input('end')) : time();
            $task_list = \app\admin\model\RepairList::whereIn('statu', [3, 4])
                ->whereBetween('create_time', [$s, $e])
                ->group('type')
                ->field('count(*) as count,type')->select();
            $new_list = [];
            foreach ($task_list as $item) {
                $new_list[] = ['count' => $item['count'], 'type' => \app\admin\model\Type::where('id', $item['type'])->value('title')];
            }
            $pf_list = \think\Db::query('SELECT
                  sum(CASE when grade=1 then 1 else 0 end)   AS \'1分\',
                  sum(CASE when grade=2 then 1 else 0 end)   AS \'2分\',
                  sum(CASE when grade=3 then 1 else 0 end)   AS \'3分\',
                  sum(CASE when grade=4 then 1 else 0 end)   AS \'4分\',
                  sum(CASE when grade=5 then 1 else 0 end)   AS \'5分\'
             from repair_repair_list where statu=4 and  create_time BETWEEN ' . $s . ' AND ' . $e . ' ;  ');
            $this->assign('list', $new_list);
            $this->assign('pf', $pf_list[0]);
            $this->assign('start', date('Y-m-d',$s));
            $this->assign('end', date('Y-m-d',$e));
            $this->success('获取成功', '', $this->fetch('statistics'));
        }
    }

    private function create_excel($title,$list)
    {
        require_once \think\facade\Env::get('root_path') . "vendor/phpexcel/Classes/PHPExcel.php";
        // 创建Excel文件对象
        $objPHPExcel = new \PHPExcel();
        // 设置文档信息，这个文档信息windows系统可以右键文件属性查看
        $objPHPExcel->getProperties()->setCreator("Maarten Balliauw")
            ->setLastModifiedBy("网络报修系统")
            ->setTitle("维修单")
            ->setSubject("维修单")
            ->setDescription("维修列表")
            ->setKeywords("维修列表")
            ->setCategory("设置文档的分类");
        ob_clean();
        //根据excel坐标，添加数据
        $cell=["A","B","C","D","E","F","G","H","I","J",'K','L','M','N','O','P','Q','R'];
        $count=0;
        foreach ($title as $k=>$v) {
            $objPHPExcel->setActiveSheetIndex(0)->setCellValue($cell[$count]."1",$k);
            $count++;
        }
        foreach ($list as $key=>$item) {
            $count=0;
            foreach ($title as $k=>$v) {
                $objPHPExcel->setActiveSheetIndex(0)->setCellValue($cell[$count].($key+2),$item->$v);
                $objPHPExcel->setActiveSheetIndex(0)->getColumnDimension($cell[$count])->setWidth(20);;
                $count++;
            }
        }
        // 重命名工作sheet
        $objPHPExcel->getActiveSheet()->setTitle('报修列表');
        // 设置第一个sheet为工作的sheet
        $objPHPExcel->setActiveSheetIndex(0);
        // 保存Excel 2007格式文件，保存路径为当前路径，名字为export.xlsx
        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
        header("Content-type:application/vnd.ms-excel");
        $date=date('Y-m-d',time());
        header("Content-Disposition:attachment;filename=任务列表{$date}.xlsx");
//        $objWriter->save('export.xlsx');
        $objWriter->save('php://output');
        exit;
    }
}