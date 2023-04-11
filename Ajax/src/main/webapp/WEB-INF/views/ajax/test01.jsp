<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="../resources/js/httpRequest.js"></script>

<script type="text/javascript">
window.onload = function() {
	
	btnAction.onclick = function() {
		console.log("#btnAction click")
		
		//버튼 클릭하면 ajax 요청하게 만들것 -> 라이브러리 필요 
		//AJAX 요청 보내기
		sendRequest("POST", "./test01", "", callback)
		
	}
	
	
	
}

//AJAX 응답 처리 콜백
function callback() {
	if(httpRequest.readyState == 4) {
		
		if(httpRequest.status == 200) {
			console.log("AJAX 정상적인 요청/응답")
			
			//결과처리 함수
			printData()
		} else {
			console.log("AJAX 요청/응답 실패")
		}
		
	}
}

//응답 결과를 처리하는 함수
function printData() {
	console.log("printData call")
	
	//AJAX 응답 데이터 확인
	var respText = httpRequest.responseText
	
	console.log("---- respText ----")
	console.log(respText)
	
	//언마샬링, JSON Text -> JS Data
	var jsData = JSON.parse(respText)
	
	console.log("---- jsData ----")
	console.log(jsData)
	
	//div#result에 응답데이터 반영하기
	result.innerHTML = jsData
	
	//-------------------------------------------------------------
	
	//직접 응답한 데이터 처리
// 	result.innerHTML = "<p>key : data</p>"
// 	result.innerHTML += "<p>value : " + jsData.data + "</p>"

	//-------------------------------------------------------------
	//Person DTO로 응답한 데이터 처리
// 	result.innerHTML = "<p>name : " + jsData.name + "</p>";
// 	result.innerHTML += "<p>age : " + jsData.age + "</p>";
// 	result.innerHTML += "<p>addr : " + jsData.addr + "</p>";
// 	result.innerHTML += "<p>phone : " + jsData.phone + "</p>";

	//-------------------------------------------------------------

	//List<Member> 객체로 응답한 데이터 처리
	var html = ""
	
	for(var i=0; i<jsData.length; i++) {
		html += "<h3>" + jsData[i].id + " : " + jsData[i].pw + "</h3>";
	}
	
	result.innerHTML = html
	
	

}


</script>

</head>
<body>

<h1>AJAX 테스트 01</h1>
<hr>

<button  id="btnAction">Ajax 요청</button>

<div id="result"></div>

</body>
</html>