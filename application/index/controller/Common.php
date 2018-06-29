<?php
namespace app\index\controller;
use think\Controller;
class Common extends Controller
{
     public function initialize()
    {
       if(!session('?is_login')){
           $this->redirect('/');
       }
    }
}
