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
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>招聘系统</title>
  </head>
  <body>
  	<jsp:include   page="nav.jsp" flush="true"/>
	<!-- End Header Area -->
  	<section class="newRecruitInfo">
	  	<form action="#" method="post">
			<div class="form-group">
				<label>用户名：</label><input name="User_name" type="text" class="form-control"/>
			</div>
			<div class="form-group">
				<label>用户手机号：</label><input name="User_phone" type="text" class="form-control" />
			</div>
			<div class="form-group">
				<label>用户类型：</label>
				<select name="User_type" class="form-control">
					<option value="个人">个人</option>
					<option value="企业">企业</option>
				</select>
			</div>
			<div class="form-group">
				<input type="submit" value="确认修改" class="btn-lg"/>
			</div>
		</form>
	</section>
	
  </body>
</html>
