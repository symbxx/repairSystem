<?php
/**
 * Created by PhpStorm.
 * User: LiuHe
 * Date: 2018/4/17
 * Time: 22:25
 */
namespace app\admin\controller;
use think\facade\Env;

class Api extends Common
{
    /**
     * @return \think\response\Json 图片上传
     */
    public function upload(){
        $file = request()->file('images');
        if (!$file) {
            $this->error('请选择上传文件');
        }
        $file_info['filename']=$file->getInfo('name');
        // 移动到框架目录下
        $info = $file->validate(['ext'=>'jpg,png,gif'])->rule('date')->move(Env::get('root_path') . '/public/' . 'image');
        $ret = [];
        if ($info) {
            //这里拼接返回的格式
            $data[] =  '/image/'.$info->getSaveName();
            $ret['errno'] = 0;
            $ret['data'] = $data;
            return json($ret);
        }else{
            $ret['errno'] = 1;
            return json($ret);
        }
    }

    /**
     * @return \think\response\Json 返回用户的信息
     */
    public function getUserInfo(){
        return json(['msg'=>'获取成功','info'=>\think\Db::name('user')->where('username',input('username'))->find()]);
    }
}