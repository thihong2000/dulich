<?php
require_once __DIR__. "/../../../base-url.php";

class AdminDashboardTest extends \PHPUnit\Framework\TestCase
{
	public function testViewAdminDashboard(){
		//test view dashboard status 302
		$url = base_url();
    	$response = get_headers($url.'admin/dashboard.php');
    	$this->assertEquals('HTTP/1.1 302 Found',$response[0]);
    }
    public function testValueArrayAdminDashboard(){
    	//test value array user
		$sql = "SELECT id from tblusers";
		$response = arrayValueDB($sql);
		$this->assertTrue(isset($response));
		//test value array booking
		$sql = "SELECT BookingId from tblbooking";
		$response = arrayValueDB($sql);
		$this->assertTrue(isset($response));
		// test value array enquiry
		$sql = "SELECT id from tblenquiry";
		$response = arrayValueDB($sql);
		$this->assertTrue(isset($response));
		//test value array issue
		$sql = "SELECT id from tblissues";
		$response = arrayValueDB($sql);
		$this->assertTrue(isset($response));
		// //test value array tourpackages
		$sql = "SELECT PackageId from tbltourpackages";
		$response = arrayValueDB($sql);
		$this->assertTrue(isset($response));
    }
}