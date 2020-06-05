<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>weather song</title>
	<meta charset="UTF-8">
	<meta name="description" content="Industry.INC HTML Template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/magnific-popup.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="css/style.css"/>


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
<script src="/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(window).on("load", function() {
		
		//페이지 로딩 완료 후, 멜론 순위가져오기 함수 실행함
		getRank();
	});
	
	//멜론 순위가져오기
	function getRank() {
		
		//Ajax 호출
		$.ajax({
			url : "/melon/getRank.do",
			type : "post",
			dataType : "JSON",
			contentType : "application/json; charset=UTF-8",
			success : function(json) {
				
				var melon_rank = "";
				
				for (var i = 0; i < json.length; i++) {
					melon_rank += (json[i].rank + "위 | ");
					melon_rank += (json[i].song + " | ");
					melon_rank += (json[i].singer + " | ");
					melon_rank += (json[i].album + "<br>");
					
				}
				
				$('#melon_rank').html(melon_rank);
			}
		})
	
	}	
</script>
</head>
<body>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section  -->
	<header class="header-section clearfix">
		<div class="header-top">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6">
						<p>노래 추천 좀</p>
					</div>
					<div class="col-md-6 text-md-right">
						<p>해주세요</p>
					</div>
				</div>
			</div>
		</div>
		<div class="site-navbar">
			<!-- Logo -->
			<a href="index.html" class="site-logo">
				<img src="img/logo.png" alt="">
			</a>
		
			<!-- Menu -->
			<nav class="site-nav-menu">
				<ul>
					<li class="active"><a href="index.html">메인 화면</a></li>
					<li><a href="about.html">멜론 TOP 100 차트</a></li>
					<li><a href="solutions.html">오늘 날씨</a>
						<ul class="sub-menu">
							<li><a href="elements.html">날씨에 어울리는 노래 추천</a></li>
						</ul>
					</li>
					<li><a href="blog.html">?</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</nav>

		</div>
	</header>
	<!-- Header section end  -->
	
	<!-- Hero section  -->
	<section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hero-item set-bg" data-setbg="img/hero-slider/3.jpg">
				<div class="container">
					<div class="row">
						<div class="col-xl-8">
							<h2><span>WEATHER</span><span> &</span><span>SONG</span></h2>
							<a href="https://www.melon.com/index.htm" class="site-btn sb-white mr-4 mb-3">멜론으로 가기</a>
							<a href="#" class="site-btn sb-dark">our Services</a>
						</div>
					</div>
				</div>
			</div>
			<div class="hero-item2 set-bg" data-setbg="img/hero-slider/5.jpg">
				<div class="container">
					<div class="row">
						<div class="col-xl-8">
							<h2><span>WEATHER</span><span> &</span><span>SONG</span></h2>
							<a href="https://www.melon.com/index.htm" class="site-btn sb-white mr-4 mb-3">멜론으로 가기</a>
							<a href="#" class="site-btn sb-dark">our Services</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero section end  -->

	<!-- Features section   -->
	<section class="features-section spad set-bg" data-setbg="img/features-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="feature-box">
						<img src="img/features/1.jpg" alt="">
						<div class="fb-text">
							<h5>생각을 모아서</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipi-scing elit. Quisque orci purus, sodales in est quis, blandit sollicitudin est. Nam ornare ipsum ac accumsan auctor. </p>
							<a href="https://www.zeropay.or.kr/main.do?pgmId=PGM0081" class="fb-more-btn">제로페이 가맹점 찾기</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="feature-box">
						<img src="img/features/2.jpg" alt="">
						<div class="fb-text">
							<h5>큰 이익을 거둔다</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipi-scing elit. Quisque orci purus, sodales in est quis, blandit sollicitudin est. Nam ornare ipsum ac accumsan auctor. </p>
							<a href="" class="fb-more-btn">네이버 지도에서 찾기</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-12">
					<div class="feature-box">
						<img src="img/features/3.jpg" alt="">
						<div class="fb-text">
							<h5>Manufactoring</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipi-scing elit. Quisque orci purus, sodales in est quis, blandit sollicitudin est. Nam ornare ipsum ac accumsan auctor. </p>
							<a href="" class="fb-more-btn">Read More</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Features section end  -->
	<h1>멜론 순위</h1>
	<hr />
	<div id="melon_rank"></div>
	<br />
	<br />
	
	<!-- Clients section  -->
	<section class="clients-section spad">
		<div class="container">
			<div class="client-text">
			</div>
			<div id="client-carousel" class="client-slider owl-carousel">
				<div class="single-brand">
					<a href="#">
						<img src="img/clients/1.png" alt="">
					</a>
				</div>
				<div class="single-brand">
					<a href="#">
						<img src="img/clients/2.png" alt="">
					</a>
				</div>
				<div class="single-brand">
					<a href="#">
						<img src="img/clients/3.png" alt="">
					</a>
				</div>
				<div class="single-brand">
					<a href="#">
						<img src="img/clients/4.png" alt="">
					</a>
				</div>
				<div class="single-brand">
					<a href="#">
						<img src="img/clients/5.png" alt="">
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- Clients section end  -->


	<!-- Testimonial section -->
	<section class="testimonial-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6 p-0">
					<div class="testimonial-bg set-bg" data-setbg="img/testimonial-bg.jpg"></div>
				</div>
				<div class="col-lg-6 p-0">
					<div class="testimonial-box">
						<div class="testi-box-warp">
							<h2>Client’s Testimonials</h2>
							<div class="testimonial-slider owl-carousel">
								<div class="testimonial">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque orci purus, sodales in est quis, blandit sollicitudin est. Nam ornare ipsum ac accumsan auctor. Donec consequat arcu et commodo interdum. Vivamus posuere lorem lacus.Lorem ipsum dolor sit amet, consecte-tur adipiscing elit. Quisque orci purus, sodales in est quis, blandit sollicitudin est.</p>
									<img src="img/testimonial-thumb.jpg" alt="" class="testi-thumb">
									<div class="testi-info">
										<h5>Michael Smith</h5>
										<span>CEO Industrial INC</span>
									</div>
								</div>
								<div class="testimonial">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque orci purus, sodales in est quis, blandit sollicitudin est. Nam ornare ipsum ac accumsan auctor. Donec consequat arcu et commodo interdum. Vivamus posuere lorem lacus.Lorem ipsum dolor sit amet, consecte-tur adipiscing elit. Quisque orci purus, sodales in est quis, blandit sollicitudin est.</p>
									<img src="img/testimonial-thumb.jpg" alt="" class="testi-thumb">
									<div class="testi-info">
										<h5>Michael Smith</h5>
										<span>CEO Industrial INC</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Testimonial section end  -->


	<!-- Call to action section  -->
	<section class="cta-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 d-flex align-items-center">
					<h2>We produce or supply Goods, Services, or Sources</h2>
				</div>
				<div class="col-lg-3 text-lg-right" >
					<a href="#" class="site-btn sb-dark">contact us</a>
				</div>
			</div>
		</div>
	</section>
	<!-- Call to action section end  -->

	<!-- Video section  -->
	<section class="video-section spad" >
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="video-text">
						<h2>We produce or supply Goods, & Services</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque orci purus, sodales in est quis, blandit sollicitudin est. Nam ornare ipsum ac accumsan auctor. Donec consequat arcu et commodo interdum. Vivamus posuere lorem lacus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque orci purus, sodales in est quis, blandit sollicitudin est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque orci purus, sodales in est quis, blandit sollicitudin est. Nam ornare ipsum ac accumsan auctor. Donec consequat arcu et commodo interdum. Vivamus posuere lorem lacus.Lorem ipsum dolor sit amet, consectetur.</p>
						<a href="#" class="site-btn">contact us</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="video-box set-bg" data-setbg="img/video-box.jpg">
						<a href="https://www.youtube.com/watch?v=wbnaHgSttVo" class="video-popup">
							<i class="fa fa-play"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Video section end  -->


	<!-- Footer section -->
	<footer class="footer-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer-widget about-widget">
						<img src="img/logo-light.png" alt="">
						<p>Lorem ipsum dolor sit amet, consec-tetur adipiscing elit. Quisque orci purus, sodales in est quis, blandit sollicitudin est. Nam ornare ipsum ac accumsan auctor. Donec consequat arcu et commodo interdum. </p>
						<div class="footer-social">
							<a href=""><i class="fa fa-facebook"></i></a>
							<a href=""><i class="fa fa-twitter"></i></a>
							<a href=""><i class="fa fa-dribbble"></i></a>
							<a href=""><i class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer-widget">
						<h2 class="fw-title">Useful Resources</h2>
						<ul>
							<li><a href="">Jobs Vacancies</a></li>
							<li><a href="">Client Testimonials</a></li>
							<li><a href="">Green  Energy</a></li>
							<li><a href="">Chemical Research</a></li>
							<li><a href="">Oil Extractions</a></li>
							<li><a href="">About our Work</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer-widget">
						<h2 class="fw-title">Our Solutions</h2>
						<ul>
							<li><a href="">Metal Industry</a></li>
							<li><a href="">Agricultural Engineering</a></li>
							<li><a href="">Green  Energy</a></li>
							<li><a href="">Chemical Research</a></li>
							<li><a href="">Oil Extractions</a></li>
							<li><a href="">Manufactoring</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-7">
					<div class="footer-widget">
						<h2 class="fw-title">Contact Us</h2>
						<div class="footer-info-box">
							<div class="fib-icon">
								<img src="img/icons/map-marker.png" alt="" class="">
							</div>
							<div class="fib-text">
								<p>Main Str, no 23 NY,<br>New York PK 23589</p>
							</div>
						</div>
						<div class="footer-info-box">
							<div class="fib-icon">
								<img src="img/icons/phone.png" alt="" class="">
							</div>
							<div class="fib-text">
								<p>+546 990221 123<br>contact@industryalinc.com</p>
							</div>
						</div>
						<form class="footer-search">
							<input type="text" placeholder="Search">
							<button><i class="fa fa-search"></i></button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-buttom">
			<div class="container">
			<div class="row">
				<div class="col-lg-4 order-2 order-lg-1 p-0">
					<div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
				</div>
				<div class="col-lg-7 order-1 order-lg-2 p-0">
					<ul class="footer-menu">
						<li class="active"><a href="index.html">Home</a></li>
						<li><a href="about.html">About us</a></li>
						<li><a href="solutions.html">Solutions</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
		</div>
	</footer>
	<!-- Footer section end -->

	<!-- Search model -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->
	
	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>
			
</body>
</html>