<?php
require_once __DIR__. "/../../../base-url.php";

class AdminBookingTest extends \PHPUnit\Framework\TestCase
{
	public function testViewAdminBooking(){
		//test view dashboard status 302
		$url = base_url();
    	$response = get_headers($url.'admin/manage-bookings.php');
    	$this->assertEquals('HTTP/1.1 302 Found',$response[0]);
    }
    public function testValueArrayAdminBooking(){
		// //test value array bookings
		$sql = "SELECT BookingId from tblbooking";
		$response = arrayzzValueDB($sql);
		$this->assertTrue(isset($response));
    }
}