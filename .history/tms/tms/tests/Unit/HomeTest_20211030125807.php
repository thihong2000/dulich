<?php
require_once __DIR__. "/../../base-url.php";

class HomeTest extends \PHPUnit\Framework\TestCase
{
	public function testViewHome(){
		//test view trang chu status 200
		$url = base_url();
    	$response = get_headers($url.'index.php');
    	$this->assertEquals('HTTP/1.1 200 OK',$response[0]);
    }
    public function testValueArrayHome(){
    	//test hien thi 4 goi du lich trang chu
    	include('includes/config.php');
		$sql = "SELECT * from tbltourpackages order by rand() limit 4";
		$query = $dbh->prepare($sql);
		$query->execute();
		$results=$query->fetchAll(PDO::FETCH_OBJ);
		$this->assertTrue(isset($results));
		$this->assertEquals(4,count($results));
    }
}