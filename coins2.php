<?php
error_reporting(-1);
ini_set("display_errors", "On");
ini_set("memory_limit", '-1');
header("Content-type: text/html; charset=utf-8");

require 'config.class.php';
require 'Db.class.php';

class Coins
{
    public static $instance = null;

    public $domain = 'http://www.jinse.com';

    public $hType = 'market';

    public $sqlPix = "insert into block_quotation(symbolId, last, hight, low, degree, usd, vol, exchange_name,exchange_type,domain,ticker,type,exchange_icon,coin_icon)values";

    //新闻类型 1：区块链，2：比特币，3：其他新闻
    public $hName = '1';

    public function __construct($config)
    {
        $this->db = new DB($config);
        $type = $config['type'];
        $this->onStart($type);
    }

    public function onStart($type)
    {

        foreach ($type as $k=>$v) {
            //curl模拟用户登录操作
            $ch = curl_init();

            //配置curl参数
            curl_setopt_array($ch, array(
                https://api.jinse.com/v4/market/web/list?currency_type=btc&type=1&currency=CNY
                CURLOPT_URL => "http://www.jinse.com/ajax/market/getList?currency_type={$v}&type=1&currency=CNY",
                CURLOPT_RETURNTRANSFER => 1,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "GET",
                CURLOPT_HEADER=>0,
                CURLOPT_HTTPHEADER => array(
                    "cache-control: no-cache",
                ),
            ));


            curl_exec($ch);

            $output = curl_exec($ch);
            echo 222;
            print_r($output);exit();

            $result = json_decode($output,true);
            print_r($result);exit();
            $this->getItem($result['data'],$k,$v);
            curl_close($ch);
        }
        exit("OK");
    }


    public function getItem($result,$k,$v)
    {
      //print_r($result);exit();
      if (!empty($result)){
          foreach($result as $key=>$val){

                  $symbolId= $val['symbolId'];
                  $last = $val['last'];
                  $hight = $val['hight'];
                  $low = $val['low'];
                  $degree = $val['degree'];
                  $usd = $val['usd'];
                  $vol = $val['vol'];
                  $exchange_name = $val['exchange_name'];
                  $exchange_type = $val['exchange_type'];
                  $domain = $val['domain'];
                  $ticker = $val['ticker'];
                  $type = $k;
                  $exchange_icon =  strtolower($val['exchange_name']).'.png';
                  $coin_icon =  strtolower($v).'.png';
                  $this->createData($symbolId, $last, $hight, $low, $degree, $usd, $vol, $exchange_name,$exchange_type,$domain,$ticker,$type,$exchange_icon,$coin_icon);

          }
      }


    }
    //数据存入数据库
    public function createData($symbolId, $last, $hight, $low, $degree, $usd, $vol, $exchange_name,$exchange_type,$domain,$ticker,$type,$exchange_icon,$coin_icon){
        $sql = $this->sqlPix . "('{$symbolId}', '{$last}', '{$hight}', '{$low}', '{$degree}', '{$usd}', '{$vol}', '{$exchange_name}','{$exchange_type}','{$domain}','{$ticker}','{$type}','{$exchange_icon}','{$coin_icon}')";
        echo $sql;exit();
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
