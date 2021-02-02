package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//1. 서블릿 클래스
public class Hello extends HttpServlet {
	
	//2. doGet, doPost 메소드
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		//String name = "홍길동";
		
		
		//클래스를 인식하지 못하는 경우.. 빨간줄
		//1. 프로젝트 > 오른쪽 버튼 > Build Path > Configure Build Path..
		// - Libraries 탭
		// a. JRE System Libraries 존재 확인
		// b. Apache Tomcat v8.5 존재 확인
		
		
		
		//3. 출력
		// - 요청한 브라우저에게 돌려준 페이지 소스를 작성하기(****)
		PrintWriter writer = resp.getWriter();
		
		writer.println("<html>");
		writer.println("<body>");
		writer.println("<h1>Servlet</h1>");
		writer.println("Hello");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();	
		
		
	}

}












