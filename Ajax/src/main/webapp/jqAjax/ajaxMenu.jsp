<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

.left {
	float: left;
	width: 30%;
	background: #ccc;
}

.right {
	float: right;
	width: 65%;
	border: 1px solid #ccc;

}

</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
$(function() {

	//<a>태그가 클릭되었을 때
	$("a").click(function() {
		console.log("a tag click")
		
		//응답데이터를 받아서 화면에 추가해줄 객체가 필요해
		//a태그의 href 속성의 URL로 요청을 보내고
		//응답받은 데이터(HTML)를 .right 객체에 반영함
		$(".right").load($(this).attr("href"))
		
		//<a>태그의 페이지 이동(기본 동작) 막기
		return false;
	})
	
	
})



</script>


</head>
<body>

<h1>AJAX 메뉴</h1>
<h3>$객체.load() API 이용</h3>
<hr>

<div class="left">

<ul>
	<li><a href="../ajax/ajax_02.jsp">AJAX 02</a></li>
	<li><a href="../ajax/ajax_03.jsp">AJAX 03</a></li>
	<li><a href="../ajax/ajax_04.jsp">AJAX 04</a></li>
</ul>

</div>

<div class="right">
	<h3>메뉴를 눌러주세요</h3>
</div>




</body>
</html>