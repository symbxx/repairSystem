<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/18
 * Time: 0:29
 */
namespace app\admin\controller;
use app\admin\model\User as U;
class User extends Common{
    public function show(){
        $db=U::where('user_type','in',[0,1,2]);
        if(input('?key_word')){
            $db->whereLike('username|user_nickname',"%".input('key_word')."%");
        }
        $user_list=$db->select();
        $this->assign('user_list',$user_list);
        $this->success('获取成功','',$this->fetch());
    }
    public function add(){
        if(request()->isPost()){
            $result = $this->validate(input(),'User');
            if(true !== $result){
                return json(['msg'=>$result,'code'=>0]);
            }
            $data=input();
            $salt=rand(1,1000);
            $data['password']=crypt_pwd(input('password'),$salt);
            $data['salt']=$salt;
            if(U::create($data)){
                return json(['msg'=>'添加成功','code'=>1]);
            }else{
                return json(['msg'=>'添加失败，用户名重复','code'=>0]);
            }
        }
    }
    public function delete(){
        if(request()->isPost()){
            if(U::where('id',input('id'))->delete()){
                return json(['msg'=>'删除成功','code'=>1]);
            }else{
                return json(['msg'=>'删除失败','code'=>0]);
            }
        }
    }
    public function lock(){
        if(request()->isPost()){
            if($user=U::where('id',input('id'))->find()){
                $user->statu=!$user->statu;
                if($user->save()){
                    return json(['msg'=>'锁定成功','code'=>1]);
                }else{
                    return json(['msg'=>'锁定失败','code'=>0]);
                }

            }
        }
    }
    public function reset(){
        if(request()->isPost()){
            if(request()->isPost()){
                if($user=U::where('id',input('id'))->find()){
                    $password='cauc'.(string)rand(1,1000);
                    $salt=rand(1,1000);
                    $user->password=crypt_pwd($password,$salt);
                    $user->salt=$salt;
                    if($user->save()){
                        return json(['msg'=>'密码重置成功，新密码为'.$password,'code'=>1]);
                    }else{
                        return json(['msg'=>'密码重置失败','code'=>0]);
                    }

                }
            }
        }
    }
    public function change_psd(){
        if(request()->isPost()){
            if(input('new_psd')==input('new_psd2') && !empty(input('new_psd'))){
                if($user=\app\admin\model\User::where('username',session('username'))->find()){
                    if($user->password==crypt_pwd(input('old_psd'),$user->salt)){
                        $user->password=crypt_pwd(input('new_psd'),$user->salt);
                        $user->save();
                        return json(['msg'=>'修改成功！','code'=>1]);
                    }else{
                        return json(['msg'=>'旧密码不正确！','code'=>0]);
                    }
                }
            }

        }
        return json(['msg'=>'修改失败！','code'=>0]);
    }
}