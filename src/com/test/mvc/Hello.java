package com.test.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//1. 서블릿을 상속받는다.
public class Hello extends HttpServlet {

	//2. doGet/doPost를 구현한다.
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//3. PrintWriter 페이지 만들기 -> X
		
		//3. JSP 페이지 호출하기 -> O
		
		//페이지 이동하기
		//a. <form> + 데이터 전달
		//b. <a> + 데이터 전달(?seq = 1)
		//c. location.href + 데이터 전달(?seq = 1)
		//----------------------------------------
		//d. response.sendRedirect() + 데이터 전달(x)
		//e. pageContext.forward() + 데이터 전달(o)
		
		
		//"/jsp"
		// - Context Root Path***
		// - 직접 지정(jsp) or 프로젝트명으로 자동으로 생김(JSPTest)
		// - "http://localhost:8090/jsp/hello.jsp" -> WebContent와 동일한 표현 
		
		//http://localhost:8090/jsp/hello.jsp
		
		//resp.sendRedirect("hello.jsp");   //상대경로
 		//잘모르면 같은 폴더에 있다고 생각하고 이름만 적어놓는다....(그다음 못적음ㅠㅜ)
		resp.sendRedirect("/jsp/hello.jsp");	//절대경로
		//"/"처음에 나오는 슬래시 = "http://localhost:8090/"까지를 나타낸다.
		// - WebContent -> "/jsp"

		//앞의 것이 뒤에 것을 부를 수 있다. 둘 다 java라 가능한 것.
		//서블릿 -> 서블릿
		//jsp -> jsp
		//서블릿 -> jsp
		//jsp -> 서블릿
		
		
	}
}
