<?php
	function base_url()
    {      
        // chỗ 88 nhớ sửa theo dịa chỉ localhost của máy nha
        return $url  = "http://localhost:88/tms/"; 
    }
    function arrayValueDB($sql)
    {   
    	include('includes/config.php');
        $query = $dbh -> prepare($sql);
		$query->execute();
		$results=$query->fetchAll(PDO::FETCH_OBJ);
		$cnt=$query->rowCount();
		return $cnt;
    }
?>