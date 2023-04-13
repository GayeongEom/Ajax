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
	
	//$.ajax() 함수의 기본 사용 구조
// 	$.ajax({
// 		type: ""	//요청 메소드
// 		, url: ""	//요청 URL
// 		, data: {	//요청 파라미터
			
// 		}
// 		, dataType: "html"	//응답 데이터 형식
// 		, success: function(res) {
// 			console.log("AJAX 성공")
// 		}
// 		, error: function() {
// 			console.log("AJAX 실패")
// 		}
// 	})
	
	//-----------------------------------------------------------------------------
	
	//버튼을 클릭하면 ajax를 실행하겠다
	$("#btnCalc").click(function() {
		
		$.ajax({
			type: "get"	//요청 메소드
			, url: "./jqAjax_ok.jsp"	//요청 URL
			, data: {	//요청 파라미터
				n1: $("#num1").val()
				, n2: $("#num2").val()
				, op: $("#oper").val()
			}
			, dataType: "html"	//응답 데이터 형식
			, success: function(res) {
				console.log("AJAX 성공")
				
				//응답데이터 반영하기
				$("#result").html(res)
				
				//입력칸 초기화
				num1.value = ""
				num2.value = ""
				oper.value = "add"
				
				//num1으로 포커스 주기
				$("#num1").focus()
			}
			, error: function() {
				console.log("AJAX 실패")
			}
		})
	
	})
	
})


</script>


</head>
<body>

<h1>jQuery AJAX 계산기 02</h1>
<h3>$.ajax() 이용</h3>
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