package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dto.Member;
import dto.Person;

@WebServlet("/ajax/test01")
public class AjaxTestController01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/ajax/test01 [GET]");
		
		req.getRequestDispatcher("/WEB-INF/views/ajax/test01.jsp").forward(req, resp);
	
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/ajax/test01 [POST]");

		//응답 데이터 형식 지정하기
//		resp.setContentType("text/html; charset=utf-8");	//HTML 응답 형식
		resp.setContentType("application/json; charset=utf-8");	//JSON 응답형식
		
		//-----------------------------------------------------------------------
		
		//응답 출력 스트림
		PrintWriter out = resp.getWriter();
		
		//JSON Text 응답하기
//		out.append("\"Response Data\"");	
//		out.append("{\"data\":12345}");
		
		//-----------------------------------------------------------------------

		//DTO 객체를 JSON응답으로 전송하기
//		Person p = new Person();
//		out.append(new Gson().toJson(p));
		
		//-----------------------------------------------------------------------

		//List객체를 JSON응답으로 전송하기
		List<Member> list = new ArrayList<>();
		
		list.add(new Member("A", "Apple"));
		list.add(new Member("B", "Banana"));
		list.add(new Member("C", "Cherry"));
		
		out.append(new Gson().toJson(list));
		
		
		
	}
	
}
