<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/21
 * Time: 0:31
 */
namespace app\admin\controller;
use think\Cache;

class Option extends Common{
    public function show(){
        if(request()->isGet()){
            $this->success('获取成功','',$this->fetch());
        }elseif(request()->isPost()){
            $list=\app\admin\model\Option::order('create_time desc')->select();
            return json(['total'=>count($list),'rows'=>$list]);
        }
    }
    public function detail(){
        $this->assign('info',\app\admin\model\Option::get(input('id')));
        $this->success('获取成功','',$this->fetch());
    }
}