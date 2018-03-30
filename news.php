<?php
error_reporting(-1);
ini_set("display_errors", "On");
ini_set("memory_limit", '-1');
header("Content-type: text/html; charset=utf-8");

require 'config.class.php';
require 'Db.class.php';

class News
{
    public static $instance = null;

    public $domain = 'www.8btc.com';

    public $hType = 'blockchain';

    public $sqlPix = "insert into block_news(type, title, author, small_img, pub_time, click_num, content, data_source, create_time)values";

    //新闻类型 1：区块链，2：比特币，3：其他新闻
    public $hName = '1';

    public function __construct($config)
    {
        $this->db = new DB($config);
        $this->onStart();
    }

    public function onStart()
    {
        $cookie_file = dirname(__FILE__)."/pic.cookie";

        //手机号
        $username = '214359766@qq.com';
        //密码
        $password = md5("yuzhou519");

        //curl模拟用户登录操作
        $ch = curl_init();

        //先获取cookies并保存
        curl_setopt_array($ch, array(
            CURLOPT_URL => "http://8btc.com/member.php?mod=logging&action=login&loginsubmit=yes&username={$username}&password={$password}&referer=http://8btc.com&loginfield=auto&formhash=f680ff80&loginhash=",
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

        //存储cookies
        curl_setopt($ch, CURLOPT_COOKIEJAR,  $cookie_file);

        curl_exec($ch);
        curl_close($ch);

        //使用上面保存的cookies再次访问
        $url = "http://www.8btc.com/blockchain";
        $ch = curl_init();

        //1. 跳过https验证：
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);

        //2.使用用户代理：
        $UserAgent = 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506; .NET CLR 3.5.21022; .NET CLR 1.0.3705; .NET CLR 1.1.4322)';
        curl_setopt($ch, CURLOPT_USERAGENT, $UserAgent);

        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,0);

        curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);

        $contents = curl_exec($ch);
        //编码转换
        $contents = @iconv("gb2312", "utf-8",$contents);
        print_r($contents);

        curl_close($ch);

        exit("OK");
    }

    public function getLU($contents)
    {
        $res = array();
        if(strpos($contents, '<h2><a target="_blank"'))
        {
            $tmp = explode('<h2><a target="_blank"', $contents);
            $area = substr($tmp[1], 0, strpos($tmp[1], '</div>'));
            $tep = explode('<a href="', $area);
            unset($tep[0]);
            foreach($tep as $v)
            {
                $n = substr($v, strpos($v, '>')+1);
                $n = substr($n, 0, strpos($n, '<'));
            }
        }
        return $res;
    }

    public static function getInstance($config) {
        if (!self::$instance) {
            self::$instance = new News($config);
        }
        return self::$instance;
    }
}

News::getInstance($config);
