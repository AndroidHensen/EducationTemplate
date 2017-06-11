<?php
namespace Admin\Controller;

use Think\Controller;

/**
 * use Common\Model 这块可以不需要使用，框架默认会加载里面的内容
 */
class ImageController extends Controller
{
    /*
     * 封面图片上传 
     */
    public function ajaxuploadimage()
    {
        $upload = D("UploadImage");
        $res = $upload->imageUpload();

        if ($res === false) {
            return show(0, "上传失败", '');
        } else {
            return show(1, "上传成功", $res);
        }
    }

    /*
     * KingEdit上传图片
     */
    public function kindupload()
    {
        $upload = D("UploadImage");
        $res = $upload->upload();
        if ($res === false) {
            return showKing(1,"上传失败");
        }
        return showKing(0,$res);
    }
}