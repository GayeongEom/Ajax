package gsonTest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dto.Person;

@WebServlet("/gson/test02")
public class GsonTestServlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/gson/test02 [GET]");
		
		//Gson객체
		Gson gson = new Gson();
		
		//------------------------------------------------
	
		//테스트용 자바 DTO 객체
		Person p1 = new Person();
		System.out.println("p1 객체 : " + p1);
		
		//p1객체 => JSON텍스트	(마샬링)
		String jsonText = gson.toJson(p1);
		System.out.println("p1 JSON : " + jsonText);
		
		//JSON텍스트 -> p2객체	(언마샬링)
		Person p2 = gson.fromJson(jsonText, Person.class);
		System.out.println("p2 객체 : " + p2);
		
		//JSON텍스트 -> p3객체	(언마샬링)
		Person p3 = gson.fromJson("{\"name\":\"Alice\",\"age\":20,\"addr\":\"Seoul\"}", Person.class);
		System.out.println("p3 Object : " + p3);
		
		//------------------------------------------------

		System.out.println("--------------------");
		
		List<Person> list = new ArrayList();
		
		list.add(new Person());
		list.add(new Person());
		list.add(new Person());

		System.out.println(gson.toJson(list));
		
		Map<String, List<Person>> map = new HashMap<>();
		map.put("list", list);
		
		System.out.println(gson.toJson(map));
		
		System.out.println("--------------------");

		//HashMap<String, Object> 타입으로 DTO를 대체할 수 있음
		Map<String, Object> data1 = new HashMap<>();
		data1.put("name", "Bob");
		data1.put("age", 30);
		data1.put("addr", "Busan");
		data1.put("phone", "01012345678");
		
		System.out.println("자바 맵 : " + data1);
		System.out.println("맵 JSON Text : " + gson.toJson(data1));
		
		System.out.println("--------------------");

		Map<String, Object> data2 = new HashMap<>();
		data2.put("name", "Clare");
		data2.put("phone", "01099998888");
		
		List<Map<String, Object>> dataList = new ArrayList<>();
		dataList.add(data1);
		dataList.add(data2);
		
		Map<String, List<Map<String, Object>>> res = new HashMap<>();
		res.put("dataList", dataList);
		
		System.out.println(gson.toJson(res));
		
		dataList.get(0);			//얘는 list라서 인덱스
		res.get("dataList");		//얘는 map이라서 키값 넣어줘야함
		
		res.get("dataList").get(0).get("name");
	
	}
	

}
