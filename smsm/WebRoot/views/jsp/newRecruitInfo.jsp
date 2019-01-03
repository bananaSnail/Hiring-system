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
				<label>岗位名称：</label><input name="Job_name" type="text" class="form-control"/>
			</div>
			<div class="form-group">
				<label>岗位薪资：</label><input name="Job_salary" type="number" class="form-control" min="1000"/>
			</div>
			<div class="form-group">
				<label>学历要求：</label>
				<select name="Exception_education" class="form-control">
					<option value="博士">博士</option>
					<option value="硕士">硕士</option>
					<option value="本科">本科</option>
					<option value="大专">大专</option>
					<option value="高中及以下">高中及以下</option>
				</select>
			</div>
			<div class="form-group">
				<label>任职要求：</label>
				<textarea cols="50" rows="3" name=""></textarea>
			</div>
			<div class="form-group">
				<input type="submit" value="确认" class="btn-lg"/>
			</div>
		</form>
	</section>
	
  </body>
</html>
