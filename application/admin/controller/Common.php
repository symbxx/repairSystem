<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/17
 * Time: 16:44
 */
namespace app\admin\controller;
use think\Controller;
class Common extends Controller{
    public function initialize()
    {
        if(!session('?admin_auth')){
           $this->redirect('/admin/auth/login');
        }
        /*操作日志记录*/
        if(\think\facade\Cache::has('option_list')){
            $option_list=\think\facade\Cache::get('option_list');
            $path=strtolower(request()->module().'_'.request()->controller().'_'.request()->action());;
            if(request()->isPost() && array_key_exists($path,$option_list)){
                \app\admin\model\Option::create([
                    'title'=>$option_list[$path],
                    'url'=>request()->url(),
                    'ip'=>request()->ip(),
                    'ids'=>input('id'),
                    'request'=>json_encode(input()),
                    'user_nickname'=>session('user_nickname')
                ]);
            }
        }else{
            $option=\think\Db::name('option_list')->select();
            $option_list_new=[];
            foreach ($option as $item) {
                $option_list_new[$item['path']]=$item['title'];
            }
            \think\facade\Cache::set('option_list',$option_list_new);
        }
    }

    /**
     * @param $list 传入数据，整理后返回
     * @return mixed
     */
    public function resetList($list){
        foreach ($list as $k) {
            $statu = "";
            $data_type = "";
            $data_type_close = "hide";
            $title = "";
            switch ($k->statu) {
                case 0:
                    $statu = "待处理";
                    $data_type = 'start_task';
                    $title = "开始维修";
                    if (in_array(session('user_type'), [0, 2])) {
                        $data_type_close = "";
                    }
                    if (session('user_type') == 1) {
                        $data_type = 'hide';
                    }
                    break;
                case 1:
                    $statu = "维修中";
                    $data_type = 'end_task';
                    $title = "维修完成";
                    if (session('user_type') == 1) {
                        $data_type = 'hide';
                    }
                    break;
                case 2:
                    $statu = "维修完成";
                    $data_type = 'close_task';
                    if (session('user_type') == 2) {
                        $data_type = 'hide';
                    }
                    $title = "确认";
                    break;
                case 3:
                    $statu = "已关闭";
                    $data_type = 'hide';
                    break;
                case 4:
                    $statu = "已评价";
                    $data_type = 'hide';
                    break;
            }
            $k['button'] = "<button class=\"RoleOfedit btn btn-info btn-sm {$data_type}\"   data-toggle=\"modal\" style=\"display:inline\">{$title}</button>";
            $k['button2'] = "<button class=\"RoleOfedit btn btn-info btn-sm end_task {$data_type_close}\"   data-toggle=\"modal\" style=\"display:inline\">直接完成</button>";
            $k['status'] = $statu;
        }
        return $list;
    }
}