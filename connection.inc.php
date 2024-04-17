<?php
session_start();
$con=mysqli_connect("localhost","root","","onlinebeautyshop");
define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'Shivu_Ecom/');
define('SITE_PATH','http://localhost/Shivu_Ecom/');

define('INSTAMOJO_REDIRECT',SITE_PATH.'payment_complete.php');

define('PRODUCT_IMAGE_SERVER_PATH',SERVER_PATH.'media/product/');
define('PRODUCT_IMAGE_SITE_PATH',SITE_PATH.'media/product/');

define('PRODUCT_MULTIPLE_IMAGE_SERVER_PATH',SERVER_PATH.'media/product_images/');
define('PRODUCT_MULTIPLE_IMAGE_SITE_PATH',SITE_PATH.'media/product_images/');

define('BANNER_SERVER_PATH',SERVER_PATH.'media/banner/');
define('BANNER_SITE_PATH',SITE_PATH.'media/banner/');

//For All Pages Banner
define('ALLPAGE_BANNER_SERVER_PATH',SERVER_PATH.'media/allpagebanner/');
define('ALLPAGE_BANNER_SITE_PATH',SITE_PATH.'media/allpagebanner/');

// define('INSTAMOJO_KEY','test_6a1b59d8aa35bb4914939a83f48');
// define('INSTAMOJO_TOKEN','test_614cde173cc3a0f873549e11d51');
//Intamojo payment gateway API key

$Cdata = mysqli_query($con,"SELECT * FROM credentials_tbls WHERE status = '1'");

while($res = mysqli_fetch_assoc($Cdata)){
    
    if($res['Ctype'] === 'Email'){
        define('SMTP_EMAIL',''.$res['email'].'');
        define('SMTP_PASSWORD',''.$res['password'].'');
    }
    if($res['Ctype'] === 'instamojo'){
        define('INSTAMOJO_KEY',''.$res['email'].'');
        define('INSTAMOJO_TOKEN',''.$res['password'].'');
    }

}

// define('SMTP_EMAIL','rrohit.chetu@gmail.com');
// define('SMTP_PASSWORD','cvps ymuy iywf onxl');
//for sending email or otp on email


define('SMS_KEY','sms_key');//this is for if u have sms API key for testing to send otp
?>