<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
<meta charset="UTF-8">
<title>홀수 짝수 여부 출력</title>
</head>
<body>
<h2>1~10 까지 홀수 짝수 여부 출력</h2>
<% 
	out.print("<table>");
	out.print("<tr>");
	
	for(int i=0;i<=10; i++){
		if(i%2==0){
			out.print("<td>");
			out.print(+i);
			out.print("</td>");
			out.print("<td>");
			out.print("짝수 입니다");
			out.print("</td>");
			
			
		}
		
		if(i%2==1){
			out.print("<td>");
			out.print(+i);
			out.print("</td>");
			out.print("<td>");
			out.print("홀수 입니다");
			out.print("</td>");
		}
		out.print("</tr>");
	}
	
%>
</body>
</html>