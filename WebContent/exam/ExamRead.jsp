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

	String sql = "SELECT * FROM lmc WHERE id='test3'";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	ResultSet rs = pstmt.executeQuery();// 실행해서 한 덩어리를 가져와라
	
	rs.next(); // 꺼내온 그 자료로 가라

	out.print(rs.getString("id"));
	out.print(rs.getString("name"));
	out.print(rs.getString("age"));
	
	
	%>

</body>
</html>