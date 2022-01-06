<?php
require_once __DIR__. "/../../../base-url.php";

class AdminPackageTest extends \PHPUnit\Framework\TestCase
{
	public function testViewAdminPackage(){
		//test view dashboard status 302
		$url = base_url();
    	$response = get_headers($url.'admin/manage-packages.php');
    	$this->assertEquals('HTTP/1.1 302 Found',$response[0]);
    }
    public function testValueArrayAdminPackage(){
		// //test value array tourpackages
		$sql = "SELECT PackageId from tbltourpackages";
		$response = arrayValueDB($sql);
		$this->assertTrue(isset($response));
    }
    public function testFeatureDetailPackage(){
		//test value array  tourpackages
		include('includes/config.php');
		$pid=1;
		$sql = "SELECT * from TblTourPackages where PackageId=:pid";
		$query = $dbh -> prepare($sql);
		$query -> bindParam(':pid', $pid, PDO::PARAM_STR);
		$query->execute();
		$results=$query->fetchAll(PDO::FETCH_OBJ);
		$this->assertTrue(isset($results));
		$this->assertEquals(1,$results[0]->PackageId);
    }
    public function testFeatureCreatePackage(){
		include('includes/config.php');
		$pname= 'Combo du lịch Phu Quoc 3 ngày';
		$ptype= 'Gói cá nhân';	
		$plocation= 'Phú Quốc';
		$pprice= '8000000';	
		$pfeatures= 'Wi-Fi miễn phí';
		$pdetails= 'Wi-Fi miễn phí';	
		$sql="INSERT INTO tbltourpackages(PackageName,PackageType,PackageLocation,PackagePrice,PackageFetures,PackageDetails) VALUES(:pname,:ptype,:plocation,:pprice,:pfeatures,:pdetails)";
		$query = $dbh->prepare($sql);
		$query->bindParam(':pname',$pname,PDO::PARAM_STR);
		$query->bindParam(':ptype',$ptype,PDO::PARAM_STR);
		$query->bindParam(':plocation',$plocation,PDO::PARAM_STR);
		$query->bindParam(':pprice',$pprice,PDO::PARAM_STR);
		$query->bindParam(':pfeatures',$pfeatures,PDO::PARAM_STR);
		$query->bindParam(':pdetails',$pdetails,PDO::PARAM_STR);
		$query->execute();
		$lastInsertId = $dbh->lastInsertId();
		$this->assertTrue(isset($lastInsertId));
		$sql = "DELETE FROM tbltourpackages WHERE PackageId=".$lastInsertId."";
		$dbh->exec($sql);
    }
}