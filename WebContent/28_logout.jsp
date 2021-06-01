<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>28_logout</title>
</head>
<body>
<%
	Enumeration<String> enumeration=session.getAttributeNames();
	while(enumeration.hasMoreElements()){
		//String sName=enumeration.nextElement().toString();
		String sName=enumeration.nextElement();
		String sValue=(String)session.getAttribute(sName);
		
		if(sValue.equals("ezenac") )
			session.removeAttribute(sName);
	}
%>

<a href="31_sessiontest.jsp">sessionTest</a>
</body>
</html>