<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menuadd.jsp' starting page</title>
    
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
	<form action="domenuadd.jsp" method="post" ENCTYPE="multipart/form-data">
		教程名称：<input type="text" name="fname"><br/>
		教程简介：<textarea name="fbrief" rows="15" cols="100"></textarea><br/>
		教程原料：<textarea name="fmaterial" rows="15" cols="100"></textarea><br/>
		
		教程方法：<textarea name="fmethod" rows="15" cols="100"></textarea><br/>
		
		图片：<input type="file" name="fimg">
		<input type="submit">		
	</form>
  </body>
</html>
