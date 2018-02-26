package com.jkxy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	@Override
	public void init() throws ServletException {
		System.out.println("======= init without parameters ======");
	}
	
	@Override
	public void destroy() {
		System.out.println("======= destroy ======");
		super.destroy();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String  sr = req.getParameter("hello");
		PrintWriter pw = resp.getWriter();
		pw.println(sr+"--get");
		System.out.println(sr+"--get");
		pw.close();
		resp.sendRedirect("baidu.com");
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String  sr = req.getParameter("hello");
		PrintWriter pw = resp.getWriter();
		pw.println(sr+"--post");
		System.out.println(sr+"--post");
		pw.close();
		super.doPost(req, resp);
	}

}
