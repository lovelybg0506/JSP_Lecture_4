<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>26_loginOk</title>
</head>
<body>
<%
	String id,pw;
%>
<%
	id=request.getParameter("id");
	pw=request.getParameter("pw");
	
	if(id.equals("ezenac") && pw.equals("12345")){
		session.setAttribute("id", id);
		response.sendRedirect("27_welcome.jsp");
	}else{
		response.sendRedirect("25_login.html");
	}
%>
</body>
</html>