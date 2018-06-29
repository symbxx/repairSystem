<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use think\Exception;

class User extends Controller
{
    public function login()
    {
        if(request()->isPost()){
            /*初步验证，防止csrf攻击*/
            $validate = new \app\index\validate\User;
            if (!$validate->check(input())) {
                return json(['msg'=>$validate->getError(),'code'=>0]);
            }else{
                $ad=new \utils\Advalidate();
                if($ad->check(input('username'),input('password'))){
                    /*登录成功之后的操作,标识为已登录*/
                    session('is_login',true);
                    /*———————————待定—————————————————*/
                    /*检查信息或者补全信息，第一次登录添加账号信息到数据库*/
                    if(!\think\Db::name('user')->where('username',input('username'))->find()){
                        \app\index\model\User::insert(['username'=>input('username')]);
                    }
                    /*———————————待定—————————————————*/
                    /*记录user_type,做页面的区分处理*/
                    session('user__type',1);#l老师为1，学生为2
                    session('user',input('username'));#记录当前用户账号
                    return json(['msg'=>"登录成功！",'code'=>1]);
                }else{
                    return json(['msg'=>"账号或密码不正确！",'code'=>0]);
                }
            }
        }elseif(request()->isGet()){
            $notice=Db::name('notice')->where('id',1)->value('content');
            $this->assign('notice',$notice);
            return $this->fetch();
        }
    }
    private function get_info_statu($username){
        return true?true:false;
    }
    public function test(){

    }

}
