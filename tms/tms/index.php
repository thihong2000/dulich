<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE HTML>
<html>
<head>
<title>Travelnam</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css2?family=Prompt' rel='stylesheet' type="text/css">
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
<!--//end-animate-->
</head>
<body>
<?php include('includes/header.php');?>
<div class="banner">


<div class="logo wow fadeInDown animated" data-wow-delay=".2s" >
			<a href="index.php" style="margin-left: 40%"> <em>T</em><span class="logo1">ravelnam</span></a>	
		</div>
<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
	
		
				
					<nav class="cl-effect-1">
						<ul class="nav navbar-nav">
							
			
	
							<li><a href="index.php">Trang chủ</a></li>
							<li><a href="page.php?type=Giới thiệu">Về chúng tôi</a></li>
								<li><a href="package-list.php">Các Gói Du Lịch</a></li>
								<li><a href="page.php?type=Chính sách bảo mật">Chính sách bảo mật</a></li>
								<li><a href="page.php?type=Điều kiện và điều khoản">Điều kiện và điều khỏan</a></li>
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
		
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> Cùng nhau trải nghiệm cuộc sống </h1>
	</div>
</div>


<!--- rupes ---->
<div class="container">
	<div class="rupes">
		<div class="col-md-4 rupes-left wow fadeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
			<div class="rup-left">
				<a href="offers.html"><i class="fa fa-usd"></i></a>
			</div>
			<div class="rup-rgt">
				<h3>Giảm 40%</h3>
				<h4><a href="offers.html">DU LỊCH THÔNG MINH</a></h4>
				
			</div>
				<div class="clearfix"></div>
		</div>
		<div class="col-md-4 rupes-left wow fadeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
			<div class="rup-left">
				<a href="offers.html"><i class="fa fa-h-square"></i></a>
			</div>
			<div class="rup-rgt">
				<h3>Giảm đến 30%</h3>
				<h4><a href="offers.html">THẾ GIỚI KHÁCH SẠN</a></h4>
				
			</div>
				<div class="clearfix"></div>
		</div>
		<div class="col-md-4 rupes-left wow fadeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
			<div class="rup-left">
				<a href="offers.html"><i class="fa fa-mobile"></i></a>
			</div>
			<div class="rup-rgt">
				<h3>Giảm 50%</h3>
				<h4><a href="offers.html">ƯU ĐÃI KHI LIÊN KẾT ỨNG DỤNG</a></h4>
			
			</div>
				<div class="clearfix"></div>
		</div>
	
	</div>
</div>
<!--- /rupes ---->



<!---holiday---->
<div class="container">
	<div class="holiday">
	



	
	<h3>Các Gói Du Lịch</h3>

					
<?php $sql = "SELECT * from tbltourpackages order by rand() limit 4";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>
			<div class="rom-btm">
				<div class="col-md-3 room-left wow fadeInLeft animated" data-wow-delay=".5s">
					<img src="admin/pacakgeimages/<?php echo htmlentities($result->PackageImage);?>" class="img-responsive" alt="">
				</div>
				<div class="col-md-6 room-midle wow fadeInUp animated" data-wow-delay=".5s">
					<h4>Tên Gói: <?php echo htmlentities($result->PackageName);?></h4>
					<h6>Thể lọai: <?php echo htmlentities($result->PackageType);?></h6>
					<p><b>Địa điểm:</b> <?php echo htmlentities($result->PackageLocation);?></p>
					<p><b>Đặc điểm</b> <?php echo htmlentities($result->PackageFetures);?></p>
				</div>
				<div class="col-md-3 room-right wow fadeInRight animated" data-wow-delay=".5s">
					<h5>VND <?php echo htmlentities($result->PackagePrice);?></h5>
					<a href="package-details.php?pkgid=<?php echo htmlentities($result->PackageId);?>" class="view">Chi tiết</a>
				</div>
				<div class="clearfix"></div>
			</div>

<?php }} ?>
			
		
<div><a href="package-list.php" class="view">Xem các gói khác</a></div>
</div>
			<div class="clearfix"></div>
	</div>



<!--- routes ---->
<div class="routes">
	<div class="container">
		<div class="col-md-4 routes-left wow fadeInRight animated" data-wow-delay=".5s">
			<div class="rou-left">
				<a href="#"><i class="glyphicon glyphicon-list-alt"></i></a>
			</div>
			<div class="rou-rgt wow fadeInDown animated" data-wow-delay=".5s">
				<h3>9000</h3>
				<p>Yêu cầu</p>
			</div>
				<div class="clearfix"></div>
		</div>
		<div class="col-md-4 routes-left">
			<div class="rou-left">
				<a href="#"><i class="fa fa-user"></i></a>
			</div>
			<div class="rou-rgt">
				<h3>2000</h3>
				<p>Người dùng đã đăng ký</p>
			</div>
				<div class="clearfix"></div>
		</div>
		<div class="col-md-4 routes-left wow fadeInRight animated" data-wow-delay=".5s">
			<div class="rou-left">
				<a href="#"><i class="fa fa-ticket"></i></a>
			</div>
			<div class="rou-rgt">
				<h3>6,00,00,000+</h3>
				<p>Đặt trước</p>
			</div>
				<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>

<?php include('includes/footer.php');?>
<!-- signup -->
<?php include('includes/signup.php');?>			
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php');?>			
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>			
<!-- //write us -->
</body>
</html>