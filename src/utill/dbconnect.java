package utill;

import java.sql.*;

public class dbconnect {
	public static Connection GetConnection() throws ClassNotFoundException, SQLException { 


	Class.forName("org.mariadb.jdbc.Driver");
	
	Connection conn = null;
	String host = "jdbc:mariadb://localhost:3306/lmc";
	String id = "root";
	String pw = "1234";
	conn = DriverManager.getConnection(host, id, pw);

	
	return null;
	
	}
}
