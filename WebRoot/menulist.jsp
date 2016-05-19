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
	String sql = "select id,fname,fbrief,fmaterial,fmethod,fhit,fimg  from menuinfo order by id";
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
		<div class="logo">教程管理</div>
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
				<li><a href="userlist.jsp">管理教程</a></li>
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
		<div class="m-right">
			<div class="right-nav">
				<ul>
					<li><img src="images/home.png"></li>
					<li style="margin-left:25px;">您当前的位置：</li>
					<li><a href="#">网站管理</a></li>
					<li></li>
					<li><a href="#">用户管理</a></li>
				</ul>
			</div>
			<div class="main">
				<table border="1" style="margin-left:50px;">
					<tr>
						<td>序号</td>
						<td>菜谱名称</td>
						<td>效果图</td>
						<td>管理功能</td>
					</tr>
					<%
						int i = 0;
						while (rs.next()) {
							i++;
					%>
					<tr>
						<td><%=i%></td>
						<td><%=rs.getString("fname")%></td>
						<td><img width="201" height="120" alt=""
							src="images/food/<%=rs.getString("fimg")%>"></td>
						<td>&nbsp;&nbsp;<a
							href="dodeletemenu.jsp?id=<%=rs.getString("id")%>">删除</a>&nbsp;&nbsp;
							<a href="doeditmenuinfo.jsp?id=<%=rs.getString("id")%>">编辑</a>&nbsp;&nbsp;
						</td>

					</tr>

					<%
						}
					%>



				</table>
				<div>
					<a href="menuadd.jsp" target="_blank">添加新教程</a>
				</div>

				<br/><br/><br/><br/><br/><br/><br/>
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
