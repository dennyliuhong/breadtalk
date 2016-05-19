<%@page import="java.sql.ResultSet"%>
<%@page import="com.linkdb.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	String username = request.getParameter("username");
	String userpassword1 = request.getParameter("userpassword1");
	String userpassword2 = request.getParameter("userpassword2");

	//检查用户的密码是否一致
	//检查用户名是否有相同
	//记录到数据库
	Dbtools dbt = new Dbtools();

	if (!userpassword1.equals(userpassword2)) {
		//密码不相同
		request.setAttribute("info", "两次输入的密码不一样！");
		request.setAttribute("url", "register.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);

	} else {
		//用户名是否有相同
		String sql = "select * from userinfo where username='"
				+ username + "'";
		ResultSet rs = dbt.executeQuery(sql);
		//判断返回的结果集里面是否有内容
		if (rs.next()) {
			//有返回结果
			//有相同的用户名
			request.setAttribute("info", "有相同的用户名，请重新输入新的用户名！");
			request.setAttribute("url", "register.jsp");
			request.getRequestDispatcher("jumper.jsp").forward(request,
					response);
		} else {
			//返回结果为0
			//没有相同的用户名，可以记录到数据库
			String sqlinsert = "insert into userinfo (username,userpassword,role,mobile) values ('"
					+ username + "','"+userpassword1+"',' ',' ')";
			dbt.executeUpdate(sqlinsert);
			request.setAttribute("info", "注册成功！");
			request.setAttribute("url", "index.jsp");
			request.getRequestDispatcher("jumper.jsp").forward(request,
					response);

		}
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'doreg.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	This is my JSP page.
	<br>
</body>
</html>
