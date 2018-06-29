<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/19
 * Time: 0:43
 */
namespace app\index\validate;

use think\Validate;

class Repair extends Validate
{
    protected $rule = [
        'type'  =>  'require',
        'title' =>  '',
        'linkman' =>  'require',
        'linktel' =>  'require',
        'content' =>  'require',
        'address' =>  'require',
        'campus' =>  'require',
        'building' =>  'require',
    ];
    protected  $message  = [
        'type.require'  =>  '请选择报修类型',
        'linkman.require' =>  '请填写联系人',
        'linktel.require' =>  '请填写联系电话',
        'content.require' =>  '请描述报修问题',
        'address.require' =>  '请填写报修地址',
        'campus.require' =>  '请选择校区',
        'building.require' =>  '请选择楼',
    ];
    protected $scene = [
        'add_admin'  =>  ['type','linkman','linktel','content','address'],
    ];
}