<?php
require_once __DIR__. "/../../base-url.php";

class PackageListTest extends \PHPUnit\Framework\TestCase
{
	public function testViewIndexPackageList(){
		$url = base_url();
    	$response = get_headers($url.'package-list.php');
    	$this->assertEquals('HTTP/1.1 200 OK',$response[0]);
    }
    public function testValueArrayPackageList(){
    	include('includes/config.php');
		$sql = "SELECT * from tbltourpackages";
		$query = $dbh->prepare($sql);
		$query->execute();
		$results=$query->fetchAll(PDO::FETCH_OBJ);
		$this->assertTrue(isset($results));
    }
}