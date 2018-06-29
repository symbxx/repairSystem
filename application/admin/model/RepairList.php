<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/19
 * Time: 0:47
 */
namespace app\admin\model;

use think\Model;

class RepairList extends Model
{
    protected $name = 'repair_list';
    public function body()
    {
        return $this->hasMany('Body','list_id','id');
    }
    public function types()
    {
        return $this->hasOne('Type','id','type');
    }
    public function setEvaluate(){
        self::where('statu',3)->whereTime('create_time','<','-5 days')->setField(['statu'=>4,'grade'=>5]);
    }
    protected function getTypeAttr($value)
    {
        return \think\Db::name('repair_type')->where('id',$value)->value('title');
    }
}