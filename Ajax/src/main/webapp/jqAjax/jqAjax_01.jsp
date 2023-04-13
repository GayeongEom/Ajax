<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">

$(function() {
	
	$("#btnCalc").click(function() {
		console.log("#btnClac click")
		
		//요청 URL
		var url = "./jqAjax_ok.jsp"
		
		//요청 파라미터
		//이렇게 다 써도 되지만 PlainPbject도 사용할 수 있잔항 우리 그걸 사용해주는게 더 좋아
		var data = "n1=" + num1.value + "&n2=" + num2.value + "&op=" + oper.value
		
		var data = {
			"n1" : num1.value
			, "n2" : num2.value
			, "op" : oper.value
		}

		//근데 키는 무조건 문자열이라 "" 안써도 되는거 기억해!?
		var data = {
			n1 : num1.value
			, n2 : num2.value
			, op : oper.value
		}
		
		//---------------------------------------------------------------------------------------
		
		//이거에 대한 요청을 보내는 메소드 작성해볼게
		//res에 결과응답을 넣어줄거야! 성공콜백이 성공했을 때 중괄호 안 실행!
		//지금 ok.jsp 안만들어놨잖아 그래서 404 에러뜰거고 이제 jsp만들어주면 버튼만 눌러도 콘솔창에 응답 성공 뜰거야
// 		$.get(url, data, function(res) {
// 			console.log("AJAX 응답 성공")
			
// 			//현재 res에 서버의 응답이 담겨있을거야
// 			//서버의 응답 데이터 확인
// 			console.log(res)
			
// 			//이걸 result에 그대ㅗㄹ 넣어주면 화면에 뜨겠지!
// 			//응답데이터를 $result에 반영하기
// 			$("#result").html(res)
			
// 			//입력창 초기화
// 			num1.value = ""
// 			num2.value = ""
// 			oper.value = "add"
			
// 			//응답을 예상해서 네번째 매개변수를 적어주는데
// 			//만약 결과가 hrml이 아니면 오류날거래
// 			//ok.jsp <body>에 안녕 추가해서 잘 되는지 확인해보자
// 		}, "html")
		
		//---------------------------------------------------------------------------------------

		//위에꺼 그대로 복붙해서 이름만 post로 바꿔주자1
		$.post(url, data, function(res) {
			console.log("AJAX 응답 성공")
			
			//현재 res에 서버의 응답이 담겨있을거야
			//서버의 응답 데이터 확인
			console.log(res)
			
			//이걸 result에 그대ㅗㄹ 넣어주면 화면에 뜨겠지!
			//응답데이터를 $result에 반영하기
			$("#result").html(res)
			
			//입력창 초기화
			num1.value = ""
			num2.value = ""
			oper.value = "add"
			
			//응답을 예상해서 네번째 매개변수를 적어주는데
			//만약 결과가 hrml이 아니면 오류날거래
			//ok.jsp <body>에 안녕 추가해서 잘 되는지 확인해보자
		}, "html")
		
		
		
	})
	
	
	
	
})

</script>


</head>
<body>

<h1>jQuery AJAX 계산기 01</h1>
<hr>

<input type="text" id="num1">
<select id="oper">
	<option value="add">더하기</option>
	<option value="sub">빼기</option>
	<option value="mul">곱하기</option>
	<option value="div">나누기</option>
</select>
<input type="text" id="num2">

<button id="btnCalc"> = </button>

<hr>

<div id="result"></div>

</body>
</html>