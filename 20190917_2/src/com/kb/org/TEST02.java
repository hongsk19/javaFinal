package com.kb.org;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TEST02")
public class TEST02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TEST02() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		response.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String password = request.getParameter("password");

		System.out.println("name = " + name);
		System.out.println("password = " + password);

		PrintWriter out = response.getWriter();
		if (name.equals("admin") && password.equals("1234"))
			out.println("<h2>로그인을 환영합니다.<h2>");

		else
			out.println("<h2>아이디나 비밀번호가 일치하지 않습니다.<h2>");
	}

}
