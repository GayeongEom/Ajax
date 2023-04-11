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
	console.log(xmlHttp)
	
	//---------------------------------------------------------------------

	//서버의 응답을 처리하는 콜백함수 지정하기
	xmlHttp.onreadystatechange = ajaxFromServer
	
	//---------------------------------------------------------------------
	
	//GET 메소드로 풀이
// 	var method = "GET"
// 	var url = "./ajax_03_ok.jsp?username=" + document.f.username.value
		
// 	xmlHttp.open(method, url)

// 	//요청메시지의 Content-Type 설정하기
// 	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
	
// 	xmlHttp.send(null)
	
	//---------------------------------------------------------------------

	//POST 메소드로 풀이
	var method = "POST"
	var url = "./ajax_03_ok.jsp"
	var param = "username=" + document.f.username.value
	
	xmlHttp.open(method, url)
	
	// 	//요청메시지의 Content-Type 설정하기
	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
	
	xmlHttp.send(param)
	
	
}

//응답을 처리하는 함수
function ajaxFromServer() {
	
	console.log("ajaxFromServer called")
	
	//아래 코드를 이용해서 body 전체를 바꿀 수도 있음
// 	document.body.innerHTML = 
	
	if(xmlHttp.readyState==4) {
		
		if(xmlHttp.status == 200) {
			console.log("200 ok. 성공적인 응답")
			
			result.innerHTML = xmlHttp.responseText
			
			
		} else {
			console.log("AJAX 요청/응답 실패")
		}
		
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