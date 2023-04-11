<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src = "<%=request.getContextPath()%>/resources/js/httpRequest.js"></script>
<!-- <script type="text/javascript" src = "../resources/js/httpRequest.js"></script> -->

<script type="text/javascript">

function ajaxToServer() {
	
	console.log("ajaxToServer() call")
	
	//AJAX 요청 보내기
	sendRequest("POST", "./ajax_03_ok.jsp", "username=" + document.f.username.value, ajaxFromServer)
	
}

function ajaxFromServer() {
	
	console.log("ajaxFromServer call")
	
	if(httpRequest.readyState == 4) {
		
		if(httpRequest.status == 200) {
			console.log("AJAX 요청/응답 성공")
			
			result.innerHTML = httpRequest.responseText
		} else {
			console.log("AJAX 요청/응답 실패")
		}
		
		
	}
	
}

</script>


</head>
<body>

<h1>AJAX 03</h1>
<hr>

<form name="f">

	<!-- 엔터키를 이용한 submit 방지용 inpput태그 -->
	<input type="text" style="display: none;">
	<input type="text" id="username" name="username">
	
	<button type="button" onclick="ajaxToServer()">입력</button>

</form>

<div id="result"></div>

</body>
</html>