<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

//자바스크립트 객체
var jsObj = {}
var jsObj = {"a" : 1, "b" : 2, c : "Cherry", "d" : ["durian", 12345], "e" : {"key":"value"}}
console.log(jsObj)

//JSON 텍스트
var jsonText = "{\"a\" : 1, \"b\" : 2, c : \"Cherry\", \"d\" : [\"durian\", 12345], \"e\" : {\"key\":\"value\"}}"
var jsonText = '{"a" : 1, "b" : 2, "c" : "Cherry", "d" : ["durian", 12345], "e" : {"key":"value"}}'
var jsonText = "{'a' : 1, 'b' : 2, 'c' : 'Cherry', 'd' : ['durian', 12345], 'e' : {'key':'value'}}"
console.log(jsonText)

console.log("-------------------")

//JSON 내장 객체
//	JSON 형식 데이터를 다루는 JS 내장 객체
//	 JS 데이터 <-> JSON 텍스트 변환 유틸 객체

//** JS 데이터 -> JSON 텍스트 변환
//	JSON.stringify(JS데이터) : JSON텍스트 반환 -> 마샬링 함수

//** JSON 텍스트 -> JS 데이터 변환 -> 언마샬링 함수
//	JSON.parse(JSON텍스트) : JS 데이터

//----------------------------------------------------------------

//JS객체 -> JSON텍스트 변환
var text = JSON.stringify(jsObj)
console.log(text)

//JSON텍스트 -> JS객체 반환
var obj = JSON.parse(text)
console.log(obj)



</script>

</head>
<body>

</body>
</html>