<?php
require_once __DIR__. "/../../base-url.php";

class DetailPackageTest extends \PHPUnit\Framework\TestCase
{
	public function testViewIndexDetailPackage(){
		//test view chi tiet goi status 200
		$url = base_url();
    	$response = get_headers($url.'package-details.php?pkgid=1');
    	$this->assertEquals('HTTP/1.1 200 OK',$response[0]);
    }
    public function testValueArrayDetailPackage(){
    	//test hien thi chi tiet goi du lich
    	include('includes/config.php');
    	$pid=1;
		$sql = "SELECT * from tbltourpackages where PackageId=:pid";
		$query = $dbh->prepare($sql);
		$query -> bindParam(':pid', $pid, PDO::PARAM_STR);
		$query->execute();
		$results=$query->fetchAll(PDO::FETCH_OBJ);
		$this->assertTrue(isset($results));
		$this->assertEquals(1,$results[0]->PackageId);
    }
}