<?php
require_once __DIR__. "/../../../base-url.php";

class AdminUserTest extends \PHPUnit\Framework\TestCase
{
	public function testViewAdminUser(){
		//test view dashboard status 302
		$url = base_url();
    	$response = get_headers($url.'admin/manage-users.php');
    	$this->assertEquals('HTTP/1.1 302 Found',$response[0]);
    }
    public function testValueArrayAdminUser(){
		// //test value array users
		$sql = "SELECT id from tblusers";
		$response = arrayValueDB($sql);
		$this->assertTrue(isset($response));
    }
}