<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>15_removeAttribute</title>
  </head>
  <body>
<%
    session.setAttribute("s_name1","저는 세션에 저장된 첫 번째 값이예요");
    session.setAttribute("s_name2","저는 세션에 저장된 두 번째 값이예요");
    session.setAttribute("s_name3","저는 세션에 저장된 세 번째 값이예요");

    out.print("<h3>==세션값을 삭제하기 전==<h3>");
    Enumeration<String> names;
    names=session.getAttributeNames();
    while(names.hasMoreElements()){
      String name=names.nextElement();
      Object value=session.getAttribute(name);
      out.println(name+":"+value+"<br>");
    }
    session.removeAttribute("s_name2"); // s_name2세션 remove

    out.print("<hr><h3> >>세션값을 삭제한 후<< </h3>");
    names=session.getAttributeNames();
    while(names.hasMoreElements()){
      String name=names.nextElement();
      Object value=session.getAttribute(name);
      out.println(name+":"+value+"<br>");
    }
%>

  </body>
</html>
