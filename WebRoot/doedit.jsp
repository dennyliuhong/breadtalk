<%@page import="com.linkdb.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//update userinfo

	Dbtools dbt = new Dbtools();

	String userpassword = request.getParameter("userpassword");
	String mobile = request.getParameter("mobile");
	String id = request.getParameter("id");

	String sql = "update userinfo set userpassword='" + userpassword
			+ "',mobile='" + mobile + "' where id=" + id;
	
	dbt.executeUpdate(sql);
	
	request.setAttribute("info", "更新成功！");
	request.setAttribute("url", "userlist.jsp");
	request.getRequestDispatcher("jumper.jsp").forward(request,
			response);
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'doedit.jsp' starting page</title>

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
