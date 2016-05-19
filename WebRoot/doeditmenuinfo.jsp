<%@page import="java.sql.ResultSet"%>
<%@page import="com.linkdb.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	String id = request.getParameter("id");

	Dbtools dbt = new Dbtools();
	//读取数据库中的用户
	String sql = "select id,fname,fbrief,fmaterial,fmethod,fhit,fimg  from menuinfo where id="
			+ id;
	ResultSet rs = dbt.executeQuery(sql);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'doeditmenuinfo.jsp' starting page</title>

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
	<form action="domenuedit.jsp" method="post"
		ENCTYPE="multipart/form-data">
		<%
			while(rs.next()){
				
		%>
		<input type="hidden" name="id" value="<%=rs.getString("id")%>"/>
		教程名称：<input type="text" name="fname" value="<%=rs.getString("fname")%>"><br /> 教程简介：
		<textarea name="fbrief" rows="15" cols="100"><%=rs.getString("fbrief")%></textarea>
		<br /> 教程原料：
		<textarea name="fmaterial" rows="15" cols="100"><%=rs.getString("fmaterial")%></textarea>
		<br /> 教程方法：
		<textarea name="fmethod" rows="15" cols="100"><%=rs.getString("fmethod")%></textarea>
		<br /> 原有图片:<img width="201" height="120" alt=""
							src="images/food/<%=rs.getString("fimg")%>">
		<br /> 图片：<input type="file" name="fimg"> <input
			type="submit">
		<%
			}
		%>

	</form>
</body>
</html>
