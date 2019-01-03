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
	<jsp:include   page="nav.jsp" flush="true"/>
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
                           <th scope="col">简历名称</th>
                           <th scope="col">姓名</th>
                           <th scope="col">期望工作</th>
                           <th scope="col">创建时间</th>
                           <th scope="col">操作</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <th scope="row"><b>#122349</b></th>
                           <td><b>Oliver Trag</b></td>
                           <td><b>London, UK</b></td>
                           <td>16:00, 12 NOV 2018</td>
						   <td><b><a href="#">详情</a></b> | <b><a href="#">删除</a></b></td>
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
                   </tbody>
               </table>
                
            </div>
		</div>
	</section>
</body>

</html>
