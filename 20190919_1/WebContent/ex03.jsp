<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
java 문법과 html 문법 썩어서 쓰기
<%
	int a= Integer.parseInt(request.getParameter("a"));
	for(int i=0; i<a; i++){

%>
	<div>
	<h2>html이 반복적으로 나오게 됩니다.</h2>
	jsp 부터는 java를 잘 알고있으면 쉽게 배울수 있습니다<br/>
	물론 하나의 언어를 잘하면 다른언어도 할만 해집니다.
	</div>
<%
	}
%>
</body>
</html>