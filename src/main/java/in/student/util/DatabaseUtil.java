package in.student.util;

import java.sql.*;

public class DatabaseUtil {
	private static final String URL = "jdbc:mysql://localhost:3306/student_manager";
	private static final String USER = "root";
	private static final String PASS = "root";

	public static Connection getConnection() throws SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(URL, USER, PASS);
		} catch (ClassNotFoundException e) {
			throw new SQLException("MySQL JDBC Driver not Found", e);
		}

	}

}
