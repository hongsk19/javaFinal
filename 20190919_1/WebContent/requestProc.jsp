<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String job = request.getParameter("job");

		String[] interest = request.getParameterValues("interest");

		/*
			1. ojdbc.jar 빌드패스 추가
			2. class.forName(파일확인)
			3. connection 
			4. preparestement
		*/
		String url = "jdbc:oracle:thin:@localhost:1521:xe";

		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
// 			conn.setAutoCommit(false);
			conn = DriverManager.getConnection(url,"hr","1234");
			pstmt = conn.prepareStatement("insert into chap06"+
										 " (name, password, gender,job,interest)"+
										 " values "+
										 " (? , ?, ?, ?, ? )");
			pstmt.setString(1, request.getParameter("name") );
			pstmt.setString(2, request.getParameter("password") );
			pstmt.setString(3, request.getParameter("gender") );
			pstmt.setString(4, request.getParameter("job"));
			pstmt.setString(5, request.getParameterValues("interest").toString());
			int result = pstmt.executeUpdate();
// 			conn.commit();
			if( result != 0){
				out.print("저장에 성공하였습니다.");
				response.sendRedirect("requestForm.jsp?result=suc");
			}
			else{
				out.print("저장에 실패했습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
		}
	%>

	<div>
		이름
		<%=name%>
		암호
		<%=password%>
		성별
		<%=gender%>
		직업
		<%=job%>
		관심분야 : <br />
		<%
			for (int i = 0; i < interest.length; i++) {
		%>
		<%=interest[i]%><br />
		<%
			}
		%>
	</div>
</body>
</html>




