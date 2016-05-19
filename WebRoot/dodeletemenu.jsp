<%@page import="com.linkdb.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String id=request.getParameter("id");
	Dbtools dbt=new Dbtools();
	String sql="delete from menuinfo where id="+id;
	dbt.executeUpdate(sql);
	
	request.setAttribute("info", "删除成功！");
	request.setAttribute("url", "menulist.jsp");
	request.getRequestDispatcher("jumper.jsp").forward(request,
			response);
%>

