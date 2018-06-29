<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/17
 * Time: 19:24
 */
namespace app\admin\controller;
class Notice extends Common{
    public function show(){
        $notice=\app\admin\model\Notice::get(1);
        $this->assign('now',$notice->content);
        $this->success('获取成功','',$this->fetch());
    }
    public function change_notice(){
        if(request()->isPost()){
            if(\app\admin\model\Notice::update(['content'=>input('content')],['id'=>1])){
                return json(['msg'=>'修改成功','code'=>1]);
            }else{
                return json(['msg'=>'修改失败','code'=>0]);
            }
        }
    }
}