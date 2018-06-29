<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/17
 * Time: 23:05
 */
namespace app\admin\controller;

use app\admin\model\Type as Tp;
class Type extends Common{
    public function show(){
        $list=Tp::where('type',input('type'))->where('hide',0)->select();
        $this->assign('list',$list);
        $this->assign('type',input('type'));
        $this->success('获取成功','',$this->fetch());
    }
    public function add(){
        if(request()->isPost()){
            if(Tp::create(input())){
                return json(['msg'=>'添加成功','code'=>1]);
            }
        }
    }
    public function delete(){
        if(request()->isPost()){
            if(Tp::where('id',input('id'))->update(['hide'=>1])){
                return json(['msg'=>'删除成功','code'=>1]);
            }else{
                return json(['msg'=>'删除失败','code'=>0]);
            }
        }
    }
}