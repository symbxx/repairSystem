<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/16
 * Time: 23:43
 */
namespace app\index\validate;

use think\Validate;

class User extends Validate
{
    protected $rule = [
        'username'  =>  'require',
        'password' =>  'require',
    ];
    protected  $message  = [
        'username.require'  =>  '用户名不能为空',
        'password.require' =>  '密码不能为空',
    ];

}