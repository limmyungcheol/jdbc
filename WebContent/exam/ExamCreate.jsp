<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
	Class.forName("org.mariadb.jdbc.Driver");

	Connection conn = null;
	String host = "jdbc:mariadb://localhost:3306/lmc";
	String id = "root";
	String pw = "1234";
	conn = DriverManager.getConnection(host, id, pw);

	String sql = "INSERT INTO lmc VALUES('test3','test3','33')";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.executeUpdate();
	%>

</body>
</html>