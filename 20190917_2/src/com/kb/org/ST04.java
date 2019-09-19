package com.kb.org;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ST04")
public class ST04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ST04() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		
//		String dansu = request.getParameter("dansu");
//		int dansu_int = Integer.parseInt(dansu);
		int dansu = Integer.parseInt(request.getParameter("dansu"));
		
		for(int i=0; i<10; i++) {
			System.out.println(dansu +" * "+i+" = "+dansu*i);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		
		System.out.println("name = "+name);
		System.out.println("password = "+password);
		System.out.println("gender = "+gender);
		
		PrintWriter out = response.getWriter();
		out.println("name = "+name);
		out.println("password = "+password);
		out.println("gender = "+gender);
	}

}
