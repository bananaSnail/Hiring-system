<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title>招聘系统</title>

	<link rel="stylesheet" href="resources/css/bootstrap.css">
	<link rel="stylesheet" href="resources/css/main.css">
	<link rel="stylesheet" href="resources/css/loginOrRegister.css">
	<link rel="stylesheet" href="resources/css/templatemo-style.css">
	<link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
  </head>
  <body>
	<!-- Start Header Area -->
	<header id="header">
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
								<li><a href="views/jsp/scanAllRecruitInfo.jsp">浏览招聘信息</a></li>
							</ul>
						</li>
						<c:if test="${user1 == null}">
							<!-- 用户未登录前显示个人中心 -->
							<li class="menu-has-children" id="personal-center"><span>个人中心&nbsp<i class="fa fa-angle-down"></i></span>
								<ul>
									<li><a data-target="#loginModal" role="button" class="btn" data-toggle="modal">登录</a></li>
									<li><a data-target="#registerModal" role="button" class="btn" data-toggle="modal">注册</a></li>
								</ul>
							</li>
						</c:if>
						<c:if test="${user1 != null}">
							<!-- 用户登录后显示用户名 -->
							<li class="menu-has-children" ><span id="showUserName">${user1.userName}</span>
								<c:if test="${user1.userType == 'personal'}">
								<ul>
									<li><a href="views/jsp/changeUserInfo.jsp" >修改个人信息</a></li>
									<li><a href="views/jsp/newResumeInfo.jsp">添加简历</a></li>
									<li><a href="views/jsp/scanResumeInfo.jsp">浏览个人简历</a></li>
									<li><a href="#">退出登录</a></li>
								</ul>
								</c:if>
								<c:if test="${user1.userType == 'company'}">
									<ul>
										<li><a href="views/jsp/changeUserInfo.jsp" >修改账号信息</a></li>
										<li><a href="views/jsp/newRecruitInfo.jsp">发布招聘信息</a></li>
										<li><a href="views/jsp/scanToEmploye.jsp">浏览应聘记录</a></li>
										<li><a href="#">浏览应聘简历</a></li>
										<li><a href="#">新消息通知</a></li>
										<li><a href="#">退出登录</a></li>
									</ul>
								</c:if>
							</li>
						</c:if>
					</ul>
				</nav><!-- #nav-menu-container -->
			</div>
		</div>
	</header>
	<!-- End Header Area -->
	
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
					<input type="text" id="adminPhone" name="username" class="form-control" placeholder="请输入手机号">
					<input type="password" id="psw" name="password" class="form-control" placeholder="请输入用户密码">
					<p id="tip"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" 
							data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary" id="loginUser">
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
						<p id="tip"></p>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" 
							data-dismiss="modal">关闭
					</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal 提示框end-->
	<!-- Modal end-->
	
	<script src="resources/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="resources/js/handleRequest.js"></script>
	</body>
</html>
