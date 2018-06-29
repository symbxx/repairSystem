<?php
namespace app\admin\controller;
use think\Controller;
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/17
 * Time: 15:34
 */
class Auth extends Controller
{
    public function initialize()
    {
        if(input('key')!='caucins'){
            $this->error('error');
        }
    }

    /**
     * @return mixed|\think\response\Json
     */
    public function login(){
        if(request()->isPost()){
            $validate = new \app\admin\validate\User;
            if (!$validate->scene('login')->check(input())) {
                return json(['msg'=>$validate->getError(),'code'=>0]);
            }
            if( $user=\app\admin\model\User::where(['username'=>input('username'),'statu'=>1])->find()){
                if($user->password==crypt_pwd(input('password'),$user->salt)){
                    session('admin_auth',true);
                    session('username',input('username'));
                    session('user_nickname',$user->user_nickname);
                    session('user_type',$user->user_type);#0为超级管理员，1为客服人员,2为维修人员
                    return json(['msg'=>'登录成功！','code'=>1]);
                }
            }
            return json(['msg'=>'用户名或密码错误','code'=>0]);
        }elseif(request()->isGet()){
            return $this->fetch();
        }
    }

    /**
     * 退出
     */
    public function logout(){
        \think\facade\Session::clear();
        $this->success('退出成功');
    }
}