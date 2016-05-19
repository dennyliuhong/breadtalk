<%@page import="java.sql.ResultSet"%>
<%@page import="com.linkdb.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String role = (String) session.getAttribute("role");
	if (!role.equals("teacher")) {
		//可以管理用户
		request.setAttribute("info", "亲，你没有管理权限，不要违规哦！");
		request.setAttribute("url", "index.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);
	}
	
	Dbtools dbt = new Dbtools();
	//读取数据库中的用户
	String sql = "select * from userinfo order by id";
	ResultSet rs = dbt.executeQuery(sql);

	//在页面上显示
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台模板管理系统</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
</head>

<body>
	<div class="top"></div>
	<div id="header">
		<div class="logo">用户管理系统</div>
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
	role = (String) session.getAttribute("role");
	if (role.equals("teacher")) {
		//可以管理用户
%>
	<li><a href="userlist.jsp">管理用户</a></li>
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
		<div class="left_menu">
			<ul id="nav_dot">
				<li>
					<h4 class="M1">
						<span></span>网站管理
					</h4>
					<div class="list-item none">
						<a href='userlist.jsp'>用户管理</a>
					</div>
				</li>
				<li>
					<h4 class="M2">
						<span></span>工单处理
					</h4>
					<div class="list-item none">
						<a href=''>工单处理1</a> <a href=''>工单处理2</a> <a href=''>工单处理3</a> <a
							href=''>工单处理4</a> <a href=''>工单处理5</a>
					</div>
				</li>
				<li>
					<h4 class="M3">
						<span></span>基础教学
					</h4>
					<div class="list-item none">
						<a href=''>基础教学1</a> <a href=''>基础教学2</a> <a href=''>基础教学3</a>
					</div>
				</li>
				<li>
					<h4 class="M4">
						<span></span>评论管理
					</h4>
					<div class="list-item none">
						<a href=''>评论管理1</a> <a href=''>评论管理2</a> <a href=''>评论管理3</a>
					</div>
				</li>
				<li>
					<h4 class="M5">
						<span></span>调研问卷
					</h4>
					<div class="list-item none">
						<a href=''>调研问卷1</a> <a href=''>调研问卷2</a> <a href=''>调研问卷3</a>
					</div>
				</li>
				<li>
					<h4 class="M6">
						<span></span>数据统计
					</h4>
					<div class="list-item none">
						<a href=''>数据统计1</a> <a href=''>数据统计2</a> <a href=''>数据统计3</a>
					</div>
				</li>
				<li>
					<h4 class="M7">
						<span></span>奖励管理
					</h4>
					<div class="list-item none">
						<a href=''>奖励管理1</a> <a href=''>奖励管理2</a> <a href=''>奖励管理3</a>
					</div>
				</li>
				<li>
					<h4 class="M8">
						<span></span>字典维护
					</h4>
					<div class="list-item none">
						<a href=''>字典维护1</a> <a href=''>字典维护2</a> <a href=''>字典维护3</a> <a
							href=''>字典维护4</a> <a href=''>字典维护5</a> <a href=''>字典维护6</a> <a
							href=''>字典维护7</a> <a href=''>字典维护8</a> <a href=''>字典维护9</a> <a
							href=''>字典维护4</a> <a href=''>字典维护5</a> <a href=''>字典维护6</a> <a
							href=''>字典维护7</a> <a href=''>字典维护8</a> <a href=''>字典维护9</a>
					</div>
				</li>
				<li>
					<h4 class="M9">
						<span></span>内容管理
					</h4>
					<div class="list-item none">
						<a href=''>内容管理1</a> <a href=''>内容管理2</a> <a href=''>内容管理3</a>
					</div>
				</li>
				<li>
					<h4 class="M10">
						<span></span>系统管理
					</h4>
					<div class="list-item none">
						<a href=''>系统管理1</a> <a href=''>系统管理2</a> <a href=''>系统管理3</a>
					</div>
				</li>
			</ul>
		</div>
		<div class="m-right">
			<div class="right-nav">
				<ul>
					<li><img src="images/home.png"></li>
					<li style="margin-left:25px;">您当前的位置：</li>
					<li><a href="#">网站管理</a></li>
					<li>></li>
					<li><a href="#">用户管理</a></li>
				</ul>
			</div>
			<div class="main">
			<table border="1" style="margin-left:50px;">
		<tr>
			<td>序号</td>
			<td>用户名</td>
			<td>角色</td>
			<td>电话</td>
			<td>管理功能</td>
		</tr>
		<%
			int i=0;
			while (rs.next()) {
				i++;
		%>
		<tr>
			<td><%=i%></td>
			<td><%=rs.getString("username")%></td>
			<td><%=rs.getString("role")%></td>
			<td><%=rs.getString("mobile")%></td>
			<td>&nbsp;&nbsp;<a href="dodelete.jsp?id=<%=rs.getString("id")%>">删除</a>&nbsp;&nbsp;
			<a href="doedituserinfo.jsp?id=<%=rs.getString("id")%>">编辑</a>&nbsp;&nbsp;</td>

		</tr>

		<%
			}
		%>



	</table>
			
			
			</div>
		</div>
	</div>
	<div class="bottom"></div>
	<div id="footer">
		<p>
			Copyright© 2015 版权所有 京ICP备05019125号-10 来源:<a
				href="http://www.mycodes.net/" target="_blank">源码之家</a>
		</p>
	</div>
	<script>
		navList(12);
	</script>
</body>
</html>
