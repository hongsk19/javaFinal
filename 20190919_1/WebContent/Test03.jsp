<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	
	public int add(int num1, int num2){
		return num1+num2;
	}
%>
<%!
	public int sub(int num1, int num2){
		return num1-num2;
	}
%>
<%!
	public int multi(int num1, int num2){
		return num1*num2;
	}
%>
<%!
	public double div(int num1, int num2){
		return num1/num2;
	}
%>
<%!
	public double remain(int num1, int num2){
		return num1%num2;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오칙연산 메소드 사용</title>
</head>
<body>
<h2>10, 3의 오칙 연산 결과</h2>
<% int a=10; int b=3;%>
10과 3의 덧셈 결과는 [<%=add(a,b)%>] 입니다.<br/>
10과 3의 뺄셈 결과는 [<%=sub(a,b)%>] 입니다.<br/>
10과 3의 곱셈 결과는 [<%=multi(a,b)%>] 입니다.<br/>
10과 3의 나눗셈 결과는 [<%=div(a,b)%>] 입니다.<br/>
10과 3의 나머지 연산 결과는 [<%=remain(a,b)%>] 입니다.
</body>
</html>