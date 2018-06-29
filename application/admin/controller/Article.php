<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/20
 * Time: 9:24
 */
namespace app\admin\controller;

use app\admin\model\Article as A;
use think\Db;

class Article extends Common
{
    /**
     * 返回页面
     */
    public function show()
    {
        return $this->success('获取成功', '', $this->fetch());
    }
    /**
     * 查看文章记录
     * @return \think\response\Json
     */
    public function record()
    {
        /*记录列表*/
        if (request()->isGet()) {
            $list =A::alias('a')
                ->join('repair_repair_type t','t.id = a.type','LEFT')
                ->field('a.id,a.title,a.type,a.create_time,a.title,t.title t')
                ->limit(input('offset'), input('limit'))->select();;
            return json(['total' => count($list), 'rows' => $list]);
        } elseif (request()->isPost()) {/*记录编辑更新*/
            $art = \app\admin\model\Article::where('id', input('id'))->find();
            $type = \app\admin\model\Type::where('type', 1)->select();
            session('art_id', input('id'));
            $this->assign('art', $art);
            $this->assign('type', $type);
            $this->success('获取成功', '', $this->fetch());
        }
    }

    /**
     * @return \think\response\Json 记录
     */
    public function add()
    {
        if (request()->isGet()) {
            $type = \app\admin\model\Type::where('type', 1)->where('hide', 0)->select();
            $this->assign('type', $type);
            $this->success('获取成功', '', $this->fetch());
        } elseif (request()->isPost()) {
            if (\app\admin\model\Article::create([
                'content' => input('content'),
                'type' => input('type'),
                'create_user' => session('username'),
                'title' => input('title')
            ])
            ) {
                return json(['msg' => '添加成功', 'code' => 1]);
            } else {
                return json(['msg' => '添加失败', 'code' => 0]);
            }
        }
    }

    /**
     * @return \think\response\Json 更新记录
     */
    public function update()
    {
        if (request()->isPost()) {
            if (\app\admin\model\Article::where('id', session('art_id'))->update([
                'content' => input('content'),
                'type' => input('type'),
                'title' => input('title')
            ])
            ) {
                return json(['msg' => '修改成功', 'code' => 1]);
            } else {
                return json(['msg' => '修改失败', 'code' => 0]);
            }
        }
    }

    /**
     * @return \think\response\Json 删除记录
     */
    public function delete()
    {
        if (request()->isPost()) {
            if (\app\admin\model\Article::where('id', input('id'))->delete()) {
                return json(['msg' => '删除成功', 'code' => 1]);
            } else {
                return json(['msg' => '删除失败', 'code' => 0]);
            }
        }

    }
}