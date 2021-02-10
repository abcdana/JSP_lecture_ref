package com.test.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//1. 브라우저의 요청을 받는 첫번째 알바생
public class Ex01 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//담당 업무 구현 -> 비즈니스 코드 구현
		//컵 준비 + 얼음 담기
		
		String cup = "얼음이 담긴 컵";
		
		
		//JSP 호출
		req.setAttribute("cup", cup);
		
		//pageContext.forward(); -> 똑같은 역할을 하는 다른 도구 제공
		//RequestDispatcher dispatcher = req.getRequestDispatcher("/hello.jsp");
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/hi.jsp");
		dispatcher.forward(req, resp);
		
		
	}
}
