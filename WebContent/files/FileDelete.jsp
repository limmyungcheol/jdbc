<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file = "dbconnect.jsp" %>

	<%


	String sql = "DELETE FROM lmc WHERE NAME = 'test2'";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.executeUpdate();
	%>

</body>
</html>