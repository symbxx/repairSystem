<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/16
 * Time: 23:43
 */
namespace app\admin\validate;

use think\Validate;

class User extends Validate
{
    protected $rule = [
        'username'  =>  'require|unique:user',
        'password' =>  'require',
        'user_type' =>  'require|number',
        'user_nickname' =>  'require',
    ];
    protected $scene = [
        'login'  =>  ['username'=>'require','password'=>'require'],
    ];

}