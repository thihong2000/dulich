<?php
require_once __DIR__. "/../../../base-url.php";

class AdminEnquireTest extends \PHPUnit\Framework\TestCase
{
	public function testViewAdminEnquire(){
		//test view dashboard status 302
		$url = base_url();
    	$response = get_headers($url.'admin/manage-enquires.php');
    	$this->assertEquals('HTTP/1.1 302 Found',$response[0]);
    }
    public function testValueArrayAdminEnquire(){
		//test value array enquirys
		$sql = "SELECT id from tblenquiry";
		$response = arrayValueDB($sql);
		$this->assertTrue(isset($response));
    }
}