<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
Route::rule('/', 'index/user/login');
Route::rule('login$', 'index/user/login');
Route::rule('repair$', 'index/oprate/index');

Route::rule('repair_add$', 'index/oprate/add_repair');
Route::rule('repair_record$', 'index/oprate/show_record');

Route::rule('reply/[:id]', 'index/oprate/reply');

Route::rule('method/:type_id', 'index/oprate/method');
Route::rule('method_detail/:art_id', 'index/oprate/method_detail');

Route::post('evaluate$', 'index/oprate/evaluate');



return [

];
