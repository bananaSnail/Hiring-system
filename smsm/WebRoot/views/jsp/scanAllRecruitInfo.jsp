<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zxx" class="no-js">
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="codepixer">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>招聘系统</title>

	<!--
			Google Font
			============================================= -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,500,600" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500i" rel="stylesheet">

	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css">
	<link rel="stylesheet" href="resources/css/linearicons.css">
	<link rel="stylesheet" href="resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="resources/css/bootstrap.css">
	<link rel="stylesheet" href="resources/css/magnific-popup.css">
	<link rel="stylesheet" href="resources/css/nice-select.css">
	<link rel="stylesheet" href="resources/css/animate.min.css">
	<link rel="stylesheet" href="resources/css/owl.carousel.css">
	<link rel="stylesheet" href="resources/css/main.css">
	<link rel="stylesheet" href="resources/css/loginOrRegister.css">
	<link rel="stylesheet" href="resources/css/templatemo-style.css">
  </head>
  <body>

	<!-- Start Header Area -->
	<header id="header" class="header-scrolled">
		<div class="container">
			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo">
					<a href="http://localhost:8081/smsm/"><img src="resources/img/logo.jpg" alt="" title="" /></a>
				</div>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li class="menu-active"><a href="views/jsp/index.jsp">首页</a></li>
						<li><a href="#">职位搜索</a></li>
						<li><a href="#">求职攻略</a></li>
						<li class="menu-has-children"><a href="scanRecruitInfo.jsp">企业招聘</a>
							<ul>
								<!-- 判断登录后是企业账户 （显示发布招聘信息和浏览招聘信息）还是个人账户（只显示浏览招聘信息） -->
								<li><a href="views/jsp/newRecruitInfo.jsp">发布招聘信息</a></li>
								<li><a href="views/jsp/scanAllRecruitInfo.jsp">浏览招聘信息</a></li>
							</ul>
						</li>
						<!-- 用户未登录前显示个人中心 -->
						<li class="menu-has-children"><a href="">个人中心</a>
							<ul>
								<li><a data-target="#loginModal" role="button" class="btn" data-toggle="modal">登录</a></li>
								<li><a data-target="#registerModal" role="button" class="btn" data-toggle="modal">注册</a></li>
							</ul>
						</li>
						<!-- 用户登录后显示用户名 -->
						<li class="menu-has-children"><a href="#">用户名</a>
							<ul>
								<li><a href="#" >修改信息</a></li>
								<li><a href="#">添加简历</a></li>
								<li><a href="#">修改简历</a></li>
							</ul>
						</li>
						<li><a href="contact.html">联系我们</a></li>
					</ul>
				</nav><!-- #nav-menu-container -->
			</div>
		</div>
	</header>
	<!-- End Header Area -->

	<!-- Start Courses Area -->
	<section class="scanRecruitInfo">
		<div class="container">
			<!-- row -->
            <div class="row"> 
              	<div class="tm-header">
                    <ul class="nav-menu">
                    	<li class="search-change">
                    		<div  class="search-form-control" >
                    			<input type="text"  placeholder="输入企业名称...">
                    		</div>
                    		<a href="#"><i class="fa fa-search"></i></a>
                    	</li>
						<li class="menu-has-children"><a href="#">热招岗位</a>
							<ul>
								<li><a href="#">Python</a></li>
								<li><a href="#">前端工程师</a></li>
								<li><a href="#">后台工程师</a></li>
							</ul>
						</li>
						<li><a href="#">最新招聘</a></li>
					</ul>
               </div>
                  
               <table class="table">
                   <thead>
                       <tr>
                           <th scope="col">企业名称</th>
                           <th scope="col">招聘状态</th>
                           <th scope="col">热聘岗位</th>
                           <th scope="col">岗位薪资</th>
                           <th scope="col">学历要求</th>
                           <th scope="col">发布时间</th>
                           <th scope="col">操作</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <th scope="row"><b>#122349</b></th>
                           <td>
                               <div class="tm-status-circle moving">
                               </div>Moving
                           </td>
                           <td><b>Oliver Trag</b></td>
                           <td><b>London, UK</b></td>
                           <td><b>485 km</b></td>
                           <td>16:00, 12 NOV 2018</td>
						   <td><a href="#">详情</a> | <a href="#">投递</a></td>
                       </tr>
                       <tr>
                           <th scope="row"><b>#122348</b></th>
                           <td>
                               <div class="tm-status-circle pending">
                               </div>Pending
                           </td>
                           <td><b>Jacob Miller</b></td>
                           <td><b>London, UK</b></td>
                           <td><b>360 km</b></td>
                           <td>11:00, 10 NOV 2018</td>
                       </tr>
                       <tr>
                           <th scope="row"><b>#122347</b></th>
                           <td>
                               <div class="tm-status-circle cancelled">
                               </div>Cancelled
                           </td>
                           <td><b>George Wilson</b></td>
                           <td><b>London, UK</b></td>
                           <td><b>340 km</b></td>
                           <td>12:00, 22 NOV 2018</td>
                       </tr>
                       <tr>
                           <th scope="row"><b>#122346</b></th>
                           <td>
                               <div class="tm-status-circle moving">
                               </div>Moving
                           </td>
                           <td><b>William Aung</b></td>
                           <td><b>London, UK</b></td>
                           <td><b>218 km</b></td>
                           <td>15:00, 10 NOV 2018</td>
                       </tr>
                       <tr>
                           <th scope="row"><b>#122345</b></th>
                           <td>
                               <div class="tm-status-circle pending">
                               </div>Pending
                           </td>
                           <td><b>Harry Ryan</b></td>
                           <td><b>London, UK</b></td>
                           <td><b>280 km</b></td>
                           <td>15:00, 11 NOV 2018</td>
                       </tr>
                       <tr>
                           <th scope="row"><b>#122344</b></th>
                           <td>
                               <div class="tm-status-circle pending">
                               </div>Pending
                           </td>
                           <td><b>Michael Jones</b></td>
                           <td><b>London, UK</b></td>
                           <td><b>218 km</b></td>
                           <td>18:00, 12 OCT 2018</td>
                       </tr>
                       <tr>
                           <th scope="row"><b>#122343</b></th>
                           <td>
                               <div class="tm-status-circle moving">
                               </div>Moving
                           </td>
                           <td><b>Timmy Davis</b></td>
                           <td><b>London, UK</b></td>
                           <td><b>218 km</b></td>
                           <td>12:00, 10 OCT 2018</td>
                       </tr>
                       <tr>
                           <th scope="row"><b>#122342</b></th>
                           <td>
                               <div class="tm-status-circle moving">
                               </div>Moving
                           </td>
                           <td><b>Oscar Phyo</b></td>
                           <td><b>London, UK</b></td>
                           <td><b>420 km</b></td>
                           <td>15:30, 06 OCT 2018</td>
                       </tr>
                       <tr>
                           <th scope="row"><b>#122341</b></th>
                           <td>
                               <div class="tm-status-circle moving">
                               </div>Moving
                           </td>
                           <td><b>Charlie Brown</b></td>
                           <td><b>London, UK</b></td>
                           <td><b>300 km</b></td>
                           <td>11:00, 10 OCT 2018</td>
                       </tr>
                       <tr>
                           <th scope="row"><b>#122340</b></th>
                           <td>
                               <div class="tm-status-circle cancelled">
                               </div>Cancelled
                           </td>
                           <td><b>Wilson Cookies</b></td>
                           <td><b>London, UK</b></td>
                           <td><b>218 km</b></td>
                           <td>17:30, 12 OCT 2018</td>
                       </tr>
                       <tr>
                           <th scope="row"><b>#122339</b></th>
                           <td>
                               <div class="tm-status-circle moving">
                               </div>Moving
                           </td>
                           <td><b>Richard Clamon</b></td>
                           <td><b>London, UK</b></td>
                           <td><b>150 km</b></td>
                           <td>15:00, 12 OCT 2018</td>
                       </tr>
                   </tbody>
               </table>
                
            </div>
		</div>
	</section>
	

	<!-- Button to trigger modal -->
	 
	<!-- Modal begin-->
	<!-- 模态框（Modal）登录 -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">
						用户登录
					</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
					</button>
				</div>
				<div class="modal-body">
					<input type="text" name="username" class="form-control" placeholder="请输入手机号">
					<input type="password" name="password" class="form-control" placeholder="请输入用户密码">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" 
							data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary">
						登录
					</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal 登录框end-->

	<!-- 模态框（Modal）注册 -->
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">
						用户注册
					</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
					</button>
				</div>
				<div class="modal-body">
					<input type="text" name="User_name" class="form-control" placeholder="请输入姓名">
					<input type="text" name="User_phone" class="form-control" placeholder="请输入手机号">
					<input type="password" name="User_pwd" class="form-control" placeholder="请输入密码">
					<div class="account-type">
						<input type="radio" name="account_type" value="个人账号" />个人账号
						<input type="radio" name="account_type" value="企业账号" />企业账号
					</div>
					<div class="business-account-wrapper">
						<input type="text" name="Company_name" class="form-control" placeholder="请输入公司名称">
						<input type="text" name="Company_location" class="form-control" placeholder="请输入公司所在地">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" 
							data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary">
						注册
					</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal 注册end-->

	<!-- 模态框（Modal）注册成功提示框-->
	<div class="modal fade" id="tipsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">
						用户提示框
					</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
					</button>
				</div>
				<div class="modal-body">
					<div class="personal-account-wrapper">
						<p>您还没有简历哦~   请先创建简历</p>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" 
							data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary">
						立即创建
					</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal 提示框end-->
	<!-- Modal end-->

	<script src="resources/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	 crossorigin="anonymous"></script>
	<script src="resources/js/vendor/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="resources/js/easing.min.js"></script>
	<script src="resources/js/hoverIntent.js"></script>
	<script src="resources/js/superfish.min.js"></script>
	<script src="resources/js/jquery.ajaxchimp.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/owl-carousel-thumb.min.js"></script>
	<script src="resources/js/jquery.sticky.js"></script>
	<script src="resources/js/jquery.nice-select.min.js"></script>
	<script src="resources/js/parallax.min.js"></script>
	<script src="resources/js/waypoints.min.js"></script>
	<script src="resources/js/wow.min.js"></script>
	<script src="resources/js/jquery.counterup.min.js"></script>
	<script src="resources/js/mail-script.js"></script>
	<script src="resources/js/main.js"></script>
</body>

</html>
