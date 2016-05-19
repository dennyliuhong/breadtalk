package com.linkdb;

import java.sql.*;
import java.util.ArrayList;

public class Dbtools {
	
	/***
	 * 增加、删除、修改
	 * insert/delete/update
	 * @param sql
	 * @return
	 */
	public int executeUpdate(String sql) {
		//连接字符串

		int rtv = 0;//returnValue,数据库受影响的行数

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager
					.getConnection("jdbc:mysql://127.0.0.1/breadtalk?user=root&password=root");
			Statement stmt = null;//状态、语句
			// 建立连接
			stmt = conn.createStatement();

			rtv = stmt.executeUpdate(sql);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rtv;
	}
	/***
	 * 查询信息
	 * @param sql
	 * @return
	 */
	public ResultSet executeQuery(String sql) {
		//连接字符串

		ResultSet rs = null;//结果集

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager
					.getConnection("jdbc:mysql://localhost/breadtalk?user=root&password=root");
			Statement stmt = null;//状态、语句
			// 建立连接
			stmt = conn.createStatement();

			//结果集
			rs = stmt.executeQuery(sql);//已经完成查询

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	

	
	
	
}
