package gsonTest;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/gson/test01")
public class GsonTestServlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/gson/test01 [GET]");
		
		//Gson 객체
		Gson gson = new Gson();
		
		//--------------------------------------------------------
		
//		gson.toJson(자바객체) : String
		//	Java 객체 -> JSON텍스트		-> 마샬링

		//		gson.fromJson("JSON텍스트", 자바타입T) : T
		//	JSON 텍스트 -> Java객체		-> 언마샬링
		
		//--------------------------------------------------------

		//int형 데이터 -> JSON 데이터
		System.out.println(gson.toJson(123));
		
		//String형 데이터 -> JSON텍스트
		System.out.println(gson.toJson("Apple"));
		
		//Long형 데이터 -> JSON텍스트
		System.out.println(gson.toJson(new Long(567)));
		
		//long형 데이터 -> JSON텍스트
		System.out.println(gson.toJson(789L));
	
		//--------------------------------------------------------

		int[] arr = {1, 2, 3, 4, 5};
		System.out.println("자바배열 : " + arr);
		
		//int[] -> array JSON텍스트
		System.out.println(gson.toJson(arr));
	
		//--------------------------------------------------------

		//맵 객체는 JSON텍스트로 Object 형식으로 변환됨
		Map map = new HashMap();
		
		//키를 적고 변환하고 싶은 데이터로 적기
		map.put("list", arr);
		
		System.out.println(gson.toJson(map));
	
		//--------------------------------------------------------
	
		System.out.println(gson.toJson(true));
		
		Map res = new HashMap();
		res.put("result", true);
		System.out.println(gson.toJson(res));
	
		//--------------------------------------------------------

		System.out.println("-----------------");
		
		//JSON텍스트 -> int 데이터
		int n1 = gson.fromJson("12345", int.class);
		
		//JSON텍스트 -> double 데이터
		double n2 = gson.fromJson("12345", double.class);
		
		//JSON텍스트 -> Long 데이터
		Long n3 = gson.fromJson("12345", Long.class);
		
	}
	

}
