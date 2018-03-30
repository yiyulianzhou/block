<?php
error_reporting(-1);
ini_set("display_errors", "On");
ini_set("memory_limit", '-1');
header("Content-type: text/html; charset=utf-8");
set_time_limit(0);

require 'config.class.php';
require 'Db.class.php';

class Coins
{
    public static $instance = null;

    public $sqlPix = "insert into block_news(type,title,small_img,post_time,brief,contents,data_source)values";

    public $sqlPix2 = "select a.`id`,a.`title`,a.`newstime`,a.`titlepic`,a.`smalltext`,b.`newstext` from block_news_data a left join block_news_data_detail b on a.id = b.id";



    public function __construct($config)
    {
        $this->db = new DB($config);

        $this->onStart();
    }

    public function onStart()
    {
        $sql = $this->sqlPix2;

        $data = $this->db->query($sql);

        if (!empty($data)) {

            foreach ($data as $key=>$val) {

                //新闻类型 type 1：区块链，2：比特币，3：其他新闻
                $type = 1;
                $title = $val['title'];
                $small_img = $val['titlepic'];
                $post_time = $val['newstime'];
                $brief = $val['smalltext'];
                $contents = $val['newstext'];
                $data_source= '众币网';
                $this->createData($type,$title,$small_img,$post_time,$brief,$contents,$data_source);
            }
        }


        exit("OK");
    }

    //数据存入数据库
    public function createData($type,$title,$small_img,$post_time,$brief,$contents,$data_source){

        $sql = $this->sqlPix . "('{$type}','{$title}','{$small_img}','{$post_time}','{$brief}','{$contents}','{$data_source}')";

        $this->db->query($sql);
    }
    public static function getInstance($config) {

        if (!self::$instance) {
            self::$instance = new Coins($config);
        }
        return self::$instance;
    }
}

Coins::getInstance($config);
