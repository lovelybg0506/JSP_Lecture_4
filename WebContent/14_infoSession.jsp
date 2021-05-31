<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>14_infoSession</title>
  </head>
  <body>
  <%
    String id_str=session.getId();
    long lasttime=session.getLastAccessedTime();//웹 브라우저의 요청이 마지막으로 시도된 시간을 1/1000초 단위로 반환
    long createtime=session.getCreationTime();//세션의 생성된 시각을 1/1000초단위로 반환 (1970년 1월 1일 0시 0분 0초 GMT 기준)
    long time_used=(lasttime-createtime)/60000;//사용한 시간 (60000이어야 1000분의 1초니까 60초로 나누는거)
    int inactive=session.getMaxInactiveInterval()/60;//세션의 유효시간
    boolean b_new=session.isNew(); // 세션이 처음 생성 true, 기존의것이면 false
  %>
  [1]세션 ID는 [<%=session.getId() %>]입니다.<br>
  [2]당신이 웹 사이트에 머문 시간은 <%=time_used %>분 입니다.<br>
  [3]세션의 유효 시간은 <%=inactive %>분 입니다.<br>
  [4]세션이 새로 만들어 졌나요?

  <%
      if(b_new)
        out.print("예! 새로운 세션을 만들었습니다.");
      else
        out.print("아니오! 새로운 세션을 만들지 않았습니다.");
  %>
  </body>
</html>
