<%@page import="java.sql.ResultSet"%>
<%@page import="com.linkdb.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	Dbtools dbt=new Dbtools();
	String sql="select id,fname,fbrief,fmaterial,fmethod,fhit,fimg  from menuinfo order by id desc limit 6";
	ResultSet rs=dbt.executeQuery(sql);
	
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>面包心语</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/index.css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
</head>

<body>
	<div class="top"></div>
	<div id="header">
		<div class="logo">面包心语</div>
		<div class="navigation">
			<ul>
<%
	if (session.getAttribute("username") == null) {
%>
	<li><a href="register.jsp">注册</a></li>
	<li><a href="login.jsp">登录</a></li>
<%
	} else {
%>
	<li>欢迎您！</li>
	<li><a href=""><%=session.getAttribute("username")%></a></li>
<%
	String role = (String) session.getAttribute("role");
	if (role.equals("teacher")) {
		//可以管理用户
%>
	<li><a href="userlist.jsp">管理用户</a></li>
	<li><a href="menulist.jsp">管理教程</a></li>
<%
	} else {
			//不可以管理
%>
<%
	}

}
%>
			</ul>
		</div>
	</div>
	<div id="content">
	<div id="foods">
	<%
		while(rs.next()){
			
		
	%>
		<div class="food">
			<div class="fimg"><img width="201" height="120"  src="images/food/<%=rs.getString("fimg") %>"></div>
			<div class="fname"><a href="#"><%=rs.getString("fname") %></a></div>
		</div>
	<%
		}
	%>

		<div class="clr"></div>
	</div>
	</div>
	<div class="bottom"></div>
	<div id="footer">
		<p>
			Copyright© 2016 版权所有 四川师范大学计算机科学学院教育技术学2014级6班
		</p>
	</div>
	<script>
		navList(12);
	</script>
</body>
</html>
