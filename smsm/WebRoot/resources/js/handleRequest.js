
$(document).ready(function(){
	$("#loginUser").unbind("click").click(function(){
//		alert("aaa");
		console.log("psw");
		var adminPhone = document.getElementById('adminPhone').value;//获取html表单中adminName输入域对象的值，既账号
		var psw = document.getElementById('psw').value;//获取html表单中pwd输入域对象的值，既密码
		console.log(adminPhone);
		console.log(psw);
		console.log("psw");
		var xmlhttp;
		if (window.XMLHttpRequest){//IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp=new XMLHttpRequest();
		}
		else{// IE6, IE5
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function(){
			//当接受到响应时回调该方法
			if (xmlhttp.readyState==4 )//&& xmlhttp.response.state==1000
			{
				console.log(xmlhttp);
				var tip = document.getElementById('tip');//获取html的tip节点，主要用于输出登录结果
				var responseJson =  eval('(' + xmlhttp.response + ')'); //由JSON字符串转换为JSON对象
				console.log(responseJson);
				if(responseJson.status == 1) {
					if(responseJson.pwdValue == 1) {
						//登录成功
						console.log("登录成功 ");
//						var personalCenter = document.getElementById('personal-center');//个人中心
//						personalCenter.style.display = 'none';
//						var optionCenter = document.getElementById('option-center');//操作中心
//						var showUserName = document.getElementById('showUserName');//设置登录后的用户名
//						var personalContent = document.getElementById('personal-content');//个人账号
//						var companyContent = document.getElementById('company-content');//企业账号
//						showUserName.innerHTML = responseJson.user1.userName + '&nbsp<i class="fa fa-angle-down"></i>';
//						showUserName.style.display = 'block';
						$(".modal").modal("hide");
						window.location.href = "views/jsp/index.jsp";
//						if(responseJson.user1.userType == "personal") {
//							console.log('person');
//							personalContent.style.display = 'block';
//							companyContent.style.display = 'none';
//						} else {
//							console.log('company');
//							personalContent.style.display = 'none';
//							companyContent.style.display = 'block';
//						}
//						optionCenter.style.display = 'block';
					} 
					if(responseJson.pwdValue == 0) {
						//密码或手机号错误
						tip.innerHTML = "用户手机号或密码错误!";
					} 
				} 
				if(responseJson.status == 2) {
					//没有该用户，提醒用户注册
					console.log("用户不存在，请先注册账号！");
					tip.innerHTML = "用户不存在，请先注册账号！";	
				}
			}
		}
		xmlhttp.open("POST","login/login",true);//以POST方式请求该接口
		xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");//添加Content-type
		xmlhttp.send("userPhone="+adminPhone+"&userPwd="+psw);//发送请求参数间用&分割

	});
});
