<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>27_welcome</title>
</head>
<body>
<%
	Enumeration<String> enumeration=session.getAttributeNames(); // Enumeration이 뭘까 ? 데이터가10개가 있다면, 10개의 데이터가 랜덤하게 들어가있는것, 집합대형, session에 setAttribute로 저장해둔 id
	while(enumeration.hasMoreElements()){		// getAttributeNames() : 세션에있는것을 이름으로 연결해서 가져오는것
		//String sName=enumeration.nextElement().toString();
		String sName=enumeration.nextElement(); // nextElement() 는 enumeration의 타입(여기서는 String)으로 반환
		String sValue=(String)session.getAttribute(sName); // getAttribute() 는 반환할때 Object 타입으로 반환
//		Object sValue=session.getAttribute(sName); // 16행을 이렇게 바꿔도된다
		
		
		if(sValue.equals("ezenac") )
			out.println(sValue+"님 안녕하세요."+"<br>");
	}
%>

	<a href="28_logout.jsp">로그아웃</a>
</body>
</html>