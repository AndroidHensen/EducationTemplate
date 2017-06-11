<?php

namespace Admin\Controller;

use Think\Controller;

class AppController extends Controller
{
    public function getBanner()
    {
        $arr['status'] = array('eq', 1);
        $data = D("Banner")->select($arr);
        $json = $this->encode_json($data);
        exit('{dataList:'.$json.'}');
    }

    public function getNews()
    {
        $arr['status'] = array('eq', 1);
        $data = D("News")->select($arr);
        $json = $this->encode_json($data);
        exit('{dataList:'.$json.'}');
    }


    public function getCourse()
    {
        $arr['status'] = array('eq', 1);
        $data = D("Course")->select($arr);
        $json = $this->encode_json($data);
        exit('{dataList:'.$json.'}');
    }

    public function getJob()
    {
        $arr['status'] = array('eq', 1);
        $data = D("Job")->select($arr);
        $json = $this->encode_json($data);
        exit('{dataList:'.$json.'}');
    }

    public function getShare()
    {
        $arr['status'] = array('eq', 1);
        $data = D("Share")->select($arr);
        $json = $this->encode_json($data);
        exit('{dataList:'.$json.'}');
    }

    public function getTeach()
    {
        $arr['status'] = array('eq', 1);
        $data = D("Teach")->select($arr);
        $json = $this->encode_json($data);
        exit('{dataList:'.$json.'}');
    }

    public function getTheme()
    {
        $arr['status'] = array('eq', 1);
        $data = D("Theme")->select($arr);
        $json = $this->encode_json($data);
        exit('{dataList:'.$json.'}');
    }

    public function getVideo()
    {
        $arr['status'] = array('eq', 1);
        $data = D("Video")->select($arr);
        $json = $this->encode_json($data);
        exit('{dataList:'.$json.'}');
    }

    public function getAbout()
    {
        $arr['status'] = array('eq', 1);
        $data = D("About")->select($arr);
        $json = $this->encode_json($data);
        exit('{dataList:'.$json.'}');
    }

    public function encode_json($str)
    {
        $code = json_encode($str);
        return preg_replace("#\\\u([0-9a-f]+)#ie", "iconv('UCS-2', 'UTF-8', pack('H4', '\\1'))", $code);
    }

}