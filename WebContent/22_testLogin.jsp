<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>22_testLogin</title>
</head>
<body>
<%
    String id="pinksung";
    String pwd="1234";
    String name="이순신";

    if(id.equals(request.getParameter("id"))&&
          pwd.equals(request.getParameter("pwd")) ){
    	  Cookie ck=new Cookie("username",URLEncoder.encode(name,"UTF-8"));
    	  ck.setMaxAge(365*24*60*60);
    	  response.addCookie(ck);
%>
	<h2>성공적으로 로그인 하셨습니다.</h2><br>
	<a href="23_main.jsp">들어가기</a>

<%}else{%>
    <h2>로그인에 실패 하셨습니다.</h2><br>
	<a href="21_loginForm.html">들어가기</a>
<%} %>

</body>
</html>