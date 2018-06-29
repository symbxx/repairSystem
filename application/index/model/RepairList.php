<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/19
 * Time: 0:47
 */
namespace app\index\model;

use think\Model;

class RepairList extends Model
{
    protected $name = 'repair_list';
    public function body()
    {
        return $this->hasMany('Body','list_id','id');
    }

}