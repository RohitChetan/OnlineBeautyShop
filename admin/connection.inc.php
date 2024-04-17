<?php
session_start();
$con=mysqli_connect("localhost","root","","onlinebeautyshop");
define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/'.'Shivu_Ecom/');
define('SITE_PATH','http://localhost:8080/Shivu_Ecom/');

define('PRODUCT_IMAGE_SERVER_PATH',SERVER_PATH.'media/product/');
define('PRODUCT_IMAGE_SITE_PATH',SITE_PATH.'media/product/');

define('PRODUCT_MULTIPLE_IMAGE_SERVER_PATH',SERVER_PATH.'media/product_images/');
define('PRODUCT_MULTIPLE_IMAGE_SITE_PATH',SITE_PATH.'media/product_images/');

//for main banner
define('BANNER_SERVER_PATH',SERVER_PATH.'media/banner/');
define('BANNER_SITE_PATH',SITE_PATH.'media/banner/');

//For All Pages Banner
define('ALLPAGE_BANNER_SERVER_PATH',SERVER_PATH.'media/allpagebanner/');
define('ALLPAGE_BANNER_SITE_PATH',SITE_PATH.'media/allpagebanner/');

define('SHIPROCKET_TOKEN_EMAIL','rrohit.chetu@gmail.com');
define('SHIPROCKET_TOKEN_PASSWORD','Shivu@#143');

?>