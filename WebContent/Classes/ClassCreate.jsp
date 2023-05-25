<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="java.sql.*" %>
<%@ page import="utill.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
	Connection conn = dbconnect.GetConnection();
			
	String sql = "INSERT INTO lmc VALUES('test3','test3','33')";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.executeUpdate();
	%>

</body>
</html>