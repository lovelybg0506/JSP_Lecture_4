<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>12_setSession</title>
  </head>
  <body>
<%
  session.setAttribute("id","pinksung");
  session.setAttribute("pwd","test1234");
  session.setAttribute("age",20);
%>
<h3>세션 설정 (세션은 서버에 저장된다.)</h3>
  </body>
</html>
