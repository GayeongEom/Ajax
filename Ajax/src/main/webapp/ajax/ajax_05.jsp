<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="../resources/js/httpRequest.js"></script>

<script type="text/javascript">

function sendToAjax() {
	
	console.log("sendToAjax() called")
	
	sendRequest("POST", "./ajax_05_ok.jsp", "username=" + username.value +"&content=" + content.value, ajaxFromServer)
	
	
}

//ajax 요청을 보내는 함수
function ajaxFromServer() {
	
	console.log("ajaxFromServer called")
	
	if(httpRequest.readyState == 4) {
		
		if(httpRequest.status == 200) {
		console.log("성공적인 응답")
		
		document.body.innerHTML += httpRequest.responseText
		
		} else {
			console.log("응답 실패")
		}
		
	} 
	
	
}



</script>


</head>
<body>

<!-- QUIZ. -->

<!-- 이름, <input>태그, id="username" -->
<!-- 내용, <input>태그, id="content" -->

<!-- 이름, 내용 두가지 데이터를 ajax_05_ok.jsp 로 전송 -->
<!-- 전송한 데이터를 이용하여 응답데이터로 작성한다 -->

<!-- 응답 받은 데이터를 이용하여 <div>를 생성하고 그 안에 데이터를 기록 -->
<!-- 형식

   <div>
      name: Alice
      content: 안녕하세요!
      
      Alice님, 안녕하세요!
   </div>

 -->
 

<input id="username" placeholder="이름">
<input id="content" placeholder="내용">

<button type="button" onclick="sendToAjax()">전송</button>

</body>
</html>