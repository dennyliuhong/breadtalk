<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtm1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="css/login.css" rel="stylesheet" type="text/css" />


</head>

<body>
	<div class="main-login">

		<div class="login-content">
			<h2>用户登录</h2>

			<form action="dologin.jsp" method="post" id="login-form" name="login-form">
				<div class="login-info">
					<span class="user">&nbsp;</span> <input name="username"
						id="username" type="text" value="" class="login-input" />
				</div>
				<div class="login-info">
					<span class="pwd">&nbsp;</span> <input name="userpassword"
						id="password" type="password" value="" class="login-input" />
				</div>
				<div class="login-oper">
					<input type="submit" value="登 录" class="login-btn" /> <input
						type="reset" value="重 置" class="login-reset" />
				</div>
			</form>
		</div>

	</div>

	<div style="text-align:center;"></div>

</body>

</html>
