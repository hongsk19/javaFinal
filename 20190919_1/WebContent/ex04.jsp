<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int a=10;
	int b=20;
	public int add(int a, int b){
		return a+b;
	}

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
10+20=<%=add(a,b) %> 입니다.
</body>
</html>