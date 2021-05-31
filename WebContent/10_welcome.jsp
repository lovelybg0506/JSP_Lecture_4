<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>10_welcome</title>
  </head>
  <body>
<%
  Cookie[] cookies=request.getCookies();

  for(int i=0; i<cookies.length; i++){
    String id=cookies[i].getName();
    if(id.equals("ezen"))
      out.println(id+"님 안녕하세요."+"<br>");
  }
%>
<a href="11_logout.jsp">로그아웃</a>
  </body>
</html>
