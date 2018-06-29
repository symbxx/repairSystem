<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/20
 * Time: 9:30
 */
namespace app\admin\model;

use think\Model;

class Article extends Model
{
    protected $name = 'article';
    public function type()
    {
        // 修改关联查询方式为JOIN查询方式
        return $this->hasOne('Type','id','id')->setEagerlyType(0);
    }
}