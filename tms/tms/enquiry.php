<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_POST['submit1']))
{
$fname=$_POST['fname'];
$email=$_POST['email'];	
$mobile=$_POST['mobileno'];
$subject=$_POST['subject'];	
$description=$_POST['description'];
$sql="INSERT INTO  tblenquiry(FullName,EmailId,MobileNumber,Subject,Description) VALUES(:fname,:email,:mobile,:subject,:description)";
$query = $dbh->prepare($sql);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':mobile',$mobile,PDO::PARAM_STR);
$query->bindParam(':subject',$subject,PDO::PARAM_STR);
$query->bindParam(':description',$description,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg="Yêu cầu được gửi thành công";
}
else 
{
$error="Đã xảy ra lỗi. Vui lòng thử lại";
}

}

?>
<!DOCTYPE HTML>
<html>
<head>
<title>N7 - Travelnam</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tourism Management System In PHP" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
  <style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>
</head>
<body>
<!-- top-header -->
<div class="top-header">
<?php include('includes/header.php');?>
<div class="banner-1 ">
	

<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
	
		
				
					<nav class="cl-effect-1">
						<ul class="nav navbar-nav">
							
			
	
							<li><a href="index.php">Trang chủ</a></li>
							<li><a href="page.php?type=Giới thiệu">Về chúng tôi</a></li>
								<li><a href="package-list.php">Các Gói Du Lịch</a></li>
								<li><a href="page.php?type=Chính sách bảo mật">Chính sách bảo mật</a></li>
								<li><a href="page.php?type=Điều kiện và điều khoản">Điều kiện và điều khoản</a></li>
								<li><a href="page.php?type=Liên hệ">Liên hệ</a></li>
								<?php if($_SESSION['login'])
{?>
								<li>Bạn cần hỗ trợ?<a href="#" data-toggle="modal" data-target="#myModal3"> / Hãy cho chúng tôi biết </a>  </li>
								<?php } else { ?>
								<li><a href="enquiry.php">Xem xét </a>  </li>
								<?php } ?>
								<div class="clearfix"></div>

						</ul>
					</nav>
				</div><!-- /.navbar-collapse -->	
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">N7 - Travelnam</h1>
	</div>
</div>
<!--- /banner-1 ---->
<!--- privacy ---->
<div class="privacy">
	<div class="container">
		<h3 class="wow fadeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">Mật khẩu biểu mẫu yêu cầu</h3>
		<form name="enquiry" method="post">
		 <?php if($error){?><div class="errorWrap"><strong>Lỗi</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>Thành công</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>
	<p style="width: 350px;">
		
			<b>Họ và tên</b>  <input type="text" name="fname" class="form-control" id="fname" placeholder="Họ và tên" required="">
	</p> 
<p style="width: 350px;">
<b>Email</b>  <input type="email" name="email" class="form-control" id="email" placeholder="Id Email hợp lệ" required="">
	</p> 

	<p style="width: 350px;">
<b>Số điện thoại</b>  <input type="text" name="mobileno" class="form-control" id="mobileno" maxlength="10" placeholder="Nhập số điện thoại" required="">
	</p> 

	<p style="width: 350px;">
<b>Đối tượng</b>  <input type="text" name="subject" class="form-control" id="subject"  placeholder="Đối tượng" required="">
	</p> 
	<p style="width: 350px;">
<b>Mô tả</b>  <textarea name="description" class="form-control" rows="6" cols="50" id="description"  placeholder="Nhập mô tả" required=""></textarea> 
	</p> 

			<p style="width: 350px;">
<button type="submit" name="submit1" class="btn-primary btn">Gửi</button>
			</p>
			</form>

		
	</div>
</div>
<!--- /privacy ---->
<!--- footer-top ---->
<!--- /footer-top ---->
<?php include('includes/footer.php');?>
<!-- signup -->
<?php include('includes/signup.php');?>			
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php');?>			
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>
</body>
</html>