<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		List<String> al = Arrays.asList("aa","bb","cc");
		for(String temp: al)
			out.println("temp = "+temp);
	%>
	<!-- 	<div> -->
	<!-- 		jsp 파일이 servlet 파일로 변환되어 집니다.	 -->
	<!-- <!-- 	</div> -->
	-->
	<%-- <% --%>
	// int a = 10;
	<%-- %> --%>
</body>
</html>