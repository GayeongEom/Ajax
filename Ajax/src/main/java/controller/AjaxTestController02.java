package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Member;

@WebServlet("/ajax/test02")
public class AjaxTestController02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/ajax/test02");
		
		req.getRequestDispatcher("/WEB-INF/views/ajax/test02.jsp").forward(req, resp);
	
	
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/ajax/test02 [POST]");
	
//		//응답방법 1.
//		resp.getWriter().append("직접 응답");
//		
//		//응답방법 2.
////		resp.sendRedirect("리다이렉트 URL 응답");
//		resp.sendRedirect("리다이렉트 URL 응답" + "?쿼리스트링");
//		
//		//응답방법 3.
//		req.setAttribute("응답 데이터 이름", "View로 보낼 데이터");	//모델값
//		req.getRequestDispatcher("응답 View 지정").forward(req, resp);
		
		//----------------------------------------------------------------------
		
		List<Member> list = new ArrayList<>();
		
		//마치 DTO결과를 담아서 조회하는 것 처럼 작성해봄
		list.add(new Member("a", "Alice"));
		list.add(new Member("b", "Bob"));
		list.add(new Member("c", "Clare"));
		
		//JSP(View)를 이용한 AJAX 응답
		req.setAttribute("list", list);	//모델값 전달
		req.getRequestDispatcher("/WEB-INF/views/ajax/result.jsp").forward(req, resp);
	
	
	}
	

}
