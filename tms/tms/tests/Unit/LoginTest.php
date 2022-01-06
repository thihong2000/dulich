<?php
require_once __DIR__. "/../../base-url.php";

class LoginTest extends \PHPUnit\Framework\TestCase
{
	public function testViewIndexLogin(){
		//test view dang nhap status 200
		$url = base_url();
    	$response = get_headers($url.'admin/index.php');
    	$this->assertEquals('HTTP/1.1 200 OK',$response[0]);
    }
    public function testCanLogin(){
    	include('includes/config.php');
		$uname='admin';
		$password=md5('Test@123');
		$sql ="SELECT UserName,Password FROM admin WHERE UserName=:uname and Password=:password";
		$query= $dbh -> prepare($sql);
		$query-> bindParam(':uname', $uname, PDO::PARAM_STR);
		$query-> bindParam(':password', $password, PDO::PARAM_STR);
		$query-> execute();
		$this->assertTrue(!empty($query->rowCount()));
    }
    public function testCannotLoginWithIncorrectPassword(){
    	$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
		$uname='admin';
		$password=md5('Test@123456');
		$sql ="SELECT UserName,Password FROM admin WHERE UserName=:uname and Password=:password";
		$query= $dbh -> prepare($sql);
		$query-> bindParam(':uname', $uname, PDO::PARAM_STR);
		$query-> bindParam(':password', $password, PDO::PARAM_STR);
		$query-> execute();
		$this->assertFalse(!empty($query->rowCount()));
    }
	public function testCannotLoginWithIncorrectUsername(){
    	$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
		$uname='adminddd';
		$password=md5('Test@123');
		$sql ="SELECT UserName,Password FROM admin WHERE UserName=:uname and Password=:password";
		$query= $dbh -> prepare($sql);
		$query-> bindParam(':uname', $uname, PDO::PARAM_STR);
		$query-> bindParam(':password', $password, PDO::PARAM_STR);
		$query-> execute();
		$this->assertFalse(!empty($query->rowCount()));
    }
    public function testLogout(){
		$url = base_url();
    	$response = get_headers($url.'admin/logout.php');
    	$this->assertEquals('HTTP/1.1 302 Found',$response[0]);
    	 	
    }
}