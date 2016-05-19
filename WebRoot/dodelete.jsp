<%@page import="com.linkdb.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//删除用户
	String id = request.getParameter("id");
	//读取session里面的id
	String idinsession = (String) session.getAttribute("id");

	if (id.equals(idinsession)) {
		//用户不能删除自己的账号
		request.setAttribute("info", "亲，你不能删除自己吧！");
		request.setAttribute("url", "userlist.jsp");
		request.getRequestDispatcher("jumper.jsp").forward(request,
				response);

	} else {

		Dbtools dbt = new Dbtools();
		String sql = "delete from userinfo where id=" + id;
		int rtv = dbt.executeUpdate(sql);
		//受影响的行数
		if (rtv == 1) {

			request.setAttribute("info", "删除成功！");
			request.setAttribute("url", "userlist.jsp");
			request.getRequestDispatcher("jumper.jsp").forward(request,
					response);
		}else if(rtv == 0){
			//删除无效
		}else{
			//删除有问题
		}

	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'dodelete.jsp' starting page</title>

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
