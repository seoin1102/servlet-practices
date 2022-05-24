package com.douzone.guestbook.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVo;



public class GuestbookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a");
		String n = request.getParameter("no");
		
		if("deleteform".equals(action)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);
			
		} else if("add".equals(action)) {
			LocalDateTime now = LocalDateTime.now();
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

			request.setCharacterEncoding("utf-8");
			String name= request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");
			String datetime = now.format(formatter).toString();
		   
			GuestbookVo vo = new GuestbookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setMessage(message);
			vo.setDatetime(datetime);
			
			new GuestbookDao().insert(vo);
			response.sendRedirect(request.getContextPath() + "/gb");	
			
		} else if("delete".equals(action)) {
			request.setCharacterEncoding("utf-8");
			String no2 = request.getParameter("no");
			String password = request.getParameter("password");
			
			GuestbookVo vo = new GuestbookVo();
			long no= Long.parseLong(no2);
			vo.setNo(no);
			vo.setPassword(password);

			new GuestbookDao().delete(vo);
			
			response.sendRedirect(request.getContextPath() + "/gb");			
		} else {
			List<GuestbookVo> list = new GuestbookDao().findAll();
			
			request.setAttribute("list", list);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
