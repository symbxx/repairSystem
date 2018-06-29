<?php

/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/17
 * Time: 17:10
 */
namespace app\admin\controller;
class Index extends Common{
    public function index(){

        $this->assign('user_type',session('user_type'));
        return $this->fetch();
    }
    public function dashboard(){
        $count['today']=\app\admin\model\RepairList::whereTime('create_time','d')->count();
        $count['yestoday']=\app\admin\model\RepairList::whereTime('create_time','yesterday')->count();
        $count['month']=\app\admin\model\RepairList::whereTime('create_time','m')->count();
        $count['dwx']=\app\admin\model\RepairList::where('statu','0')->count();
        $count['line']=\think\Db::query('select count(*) as count, from_unixtime(create_time, \'%Y-%m-%d\') as datetime from repair_repair_list where DATE_SUB(CURDATE(), INTERVAL 30 DAY) <= create_time GROUP BY  from_unixtime(create_time, \'%Y-%m-%d\') ; ');
        $this->assign('count',$count);
        return $this->success('获取成功','',$this->fetch());
    }
}