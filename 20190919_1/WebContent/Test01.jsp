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
<title>구구단 출력</title>
</head>

<body>
<h2>구구단 출력</h2><br/>	
<% 
	out.print("<table>");
	out.print("<tr>");
		for(int i=2; i<10;i++){
			out.print("<th>");
			out.print(i+"단");
			out.print("</th>");
		}
		out.print("</tr>");
		for(int j=1; j<10; j++){
				out.print("<tr>");
				for (int dan = 2; dan < 10; dan++){
					out.print("<td>");
					out.print(dan+" X "+j+" = "+dan*j);
					out.print("</td>");
				}
				out.print("</tr>");
			}
		
%>
</body>
</html>