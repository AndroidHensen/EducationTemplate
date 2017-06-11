<?php
namespace Admin\Controller;

use Think\Controller;
use Think\Exception;

/**
 * use Common\Model 这块可以不需要使用，框架默认会加载里面的内容
 */
class BasicController extends Controller
{

    public function index()
    {
        $result = D("Basic")->select();
        $this->assign('vo', $result);
        $this->display();
    }

    public function add()
    {
        if (!$_POST['title']) {
            return show(0, "站点信息不能为空");
        }
        if (!$_POST['keywords']) {
            return show(0, "站点关键字不能为空");
        }
        if (!$_POST['title']) {
            return show(0, "站点描述不能为空");
        }
        try {
            D("Basic")->save($_POST);
            return show(1, "配置成功");
        } catch (Exception $e) {
            $e->getMessage();
        }
        $this->display();
    }

    public function cache(){
        $this->display();
    }
}