<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

var xmlHttp = null;

function ajaxToServer() {
	
	console.log("ajaxToServer() called")
	
	xmlHttp = new XMLHttpRequest();
	
	//전달데이터
	var name = username.value
	console.log(name)
	
	//요청 전 설정
	var url = "./ajax_03_ok.jsp"	//자기 자신으로 하면 안되나?
	var method = "POST"
	var param = "username=" + name
	
	//서버의 응답데이터 처리하기
	xmlHttp.onreadystatechange = callback
	
	//AJAX 요청준비
	xmlHttp.open(method, url)
	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
	
	//AJAX 요청 보내기
	xmlHttp.send(param)
	
}


function callback() {S
	
	console.log("callcack called")
	if(xmlHttp.readyState==4) {
		
		console.log(xmlHttp.responseText)
		
		//응답데이터 div에 추가하기
		result.innerHTML = xmlHttp.responseText
		
		//입력창 초기화
		
		
	}
	
	
}

</script>



</head>
<body>

<!-- Quiz -->
<!-- username을 입력하고 "입력"버튼을 누르면 -->
<!-- "안녕하세요, xxx님"으로 문구가 div#result에 채워지도록 함 -->

<h1>AJAX 03</h1>
<hr>

<form name="f">

	<!-- 엔터키를 이용한 submit 방지용 inpput태그 -->
	<input type="text" style="display: none;">
	<input type="text" id="username" name="username">
	
	<button type="button" onclick="ajaxToServer()">입력</button>

</form>

<div id="result"></div>
<hr>


</body>
</html>