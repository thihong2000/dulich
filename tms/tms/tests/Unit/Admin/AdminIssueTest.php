<?php
require_once __DIR__. "/../../../base-url.php";

class AdminIssueTest extends \PHPUnit\Framework\TestCase
{
	public function testViewAdminIssue(){
		//test view dashboard status 302
		$url = base_url();
    	$response = get_headers($url.'admin/manageissues.php');
    	$this->assertEquals('HTTP/1.1 302 Found',$response[0]);
    }
    public function testValueArrayAdminIssue(){
		//test value array issues
		$sql = "SELECT id from tblissues";
		$response = arrayValueDB($sql);
		$this->assertTrue(isset($response));
    }
}