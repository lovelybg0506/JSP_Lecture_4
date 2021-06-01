<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>24_logout</title>
</head>
<body>
<%	
	/*	cookie 삭제 처리	*/
	Cookie ck = new Cookie("username","");
	ck.setMaxAge(0);
	response.addCookie(ck);
%>
<script type="text/javascript">
	alert("로그 아웃 되었습니다.")
	location.href="21_loginForm.html"
</script>
</body>
</html>
