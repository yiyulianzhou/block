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

            //1. 跳过https验证：
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);

            //2.使用用户代理：
            $UserAgent = 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506; .NET CLR 3.5.21022; .NET CLR 1.0.3705; .NET CLR 1.1.4322)';
            curl_setopt($ch, CURLOPT_USERAGENT, $UserAgent);
            //配置curl参数

            curl_setopt_array($ch, array(
                CURLOPT_URL => "https://api.jinse.com/v4/market/web/list?currency_type={$v}&type=1&currency=CNY",
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
