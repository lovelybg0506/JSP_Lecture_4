<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>13_getSession</title>
  </head>
  <body>
<h3>세션 값 가져오기</h3>
  <%
    String id=(String)session.getAttribute("id");
    String pwd=(String)session.getAttribute("pwd");
    Integer age=(Integer)session.getAttribute("age");
    //객체를 저장해야 하므로 Integer사용
  %>

  id : <%=id %><br>
  pwd : <%=pwd %><br>
  age : <%=age %><br>

  out.println("=================================");<br>
  <%

    Enumeration<String> names=session.getAttributeNames(); // 순서x
    while(names.hasMoreElements()){ // 이름요소들이 존재하는가?
      String name=names.nextElement(); // 요소를 하나씩 가져옴
      String value=session.getAttribute(name).toString();
      //Object value=session.getAttribute(name); // Object타입으로 받으면 캐스팅 해주지 않아도 됨.
      out.println(name+":"+value+"<br>");
    }
  %>
  </body>
</html>
