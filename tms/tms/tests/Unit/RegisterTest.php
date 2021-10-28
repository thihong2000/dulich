<?php
require_once __DIR__. "/../../base-url.php";

class RegisterTest extends \PHPUnit\Framework\TestCase
{
	public function testViewIndexRegister(){
		$url = base_url();
    	$response = get_headers($url.'includes/signup.php');
    	$this->assertEquals('HTTP/1.1 200 OK',$response[0]);
    }
    public function testCanRegister(){
    	include('includes/config.php');
		$fname='Nguyen Van A';
		$mnumber='123456789';
		$email='nguyenvana@gmail.com';
		$password=md5('123');
		$sql="INSERT INTO  tblusers(FullName,MobileNumber,EmailId,Password) VALUES(:fname,:mnumber,:email,:password)";
		$query = $dbh->prepare($sql);
		$query->bindParam(':fname',$fname,PDO::PARAM_STR);
		$query->bindParam(':mnumber',$mnumber,PDO::PARAM_STR);
		$query->bindParam(':email',$email,PDO::PARAM_STR);
		$query->bindParam(':password',$password,PDO::PARAM_STR);
		$query->execute();
		$lastInsertId = $dbh->lastInsertId();
		$this->assertTrue(isset($lastInsertId));
		$sql = "DELETE FROM tblusers WHERE id=".$lastInsertId."";
		$dbh->exec($sql);
    }
    public function testCannotRegister(){
		$fname='Nguyen Van A';
		$mnumber='123456789';
		$email='nguyenvana';
		$password=md5('123');
		$this->assertFalse(filter_var($email, FILTER_VALIDATE_EMAIL));
	}
}