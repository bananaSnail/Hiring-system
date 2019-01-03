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
						   <td><b><a href="#">详情</a></b> | <b><a href="#">投递</a></b></td>
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
	
</body>

</html>
