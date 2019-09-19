package com.kb.org;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TEST01")
public class TEST01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TEST01() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		response.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");

		System.out.println("name = " + name);

		PrintWriter out = response.getWriter();
		out.println("<title>get Servlet</title>");
		out.println("<h2>이 요청은 doPost 에서 처리되었습니다<h2>");
		out.println("name : [" + name + "]");
	}
}
