package com.util;

import java.sql.*;
import com.constants.Constants;

public class CP {

	static Connection con;

	public static Connection createConnection() {
		// Load the Driver
		try {
			Class.forName(Constants.mysqlDriver);

			// Creating Connection
			con = DriverManager.getConnection(Constants.dbURL, Constants.username, Constants.password);
//			if (con != null) {
//				System.out.println("Connected to DB. ");
//			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
