/**
 * 
 */
package com.java.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author bthungapalli
 *
 */
public class ConnectionUtil {
	
	
	public static Connection createConnection(String env) {

		Connection dbcon = null;
		String url = "";
		String dbName = "";
		String userName = "";
		String PassWord = "";

		if(env.equals("dev")){
		url = "jdbc:mysql://192.185.129.7:3306/";
		dbName = "jayso6tq_empower";
		userName = "jayso6tq_empower";
		PassWord = "pass123";
		}else{
			url = "jdbc:mysql://localhost:3306/";
			dbName = "empower";
			userName = "root";
			PassWord = "root";
		}
		System.out.println("creating connection for : " + url);

		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				dbcon = DriverManager.getConnection(url + dbName, userName, PassWord);
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		return dbcon;
	}

}
