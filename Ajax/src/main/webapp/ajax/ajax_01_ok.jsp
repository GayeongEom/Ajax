<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% int n1 = Integer.parseInt(request.getParameter("num1")); %>
<% int n2 = Integer.parseInt(request.getParameter("num2")); %>
<% String op = request.getParameter("oper"); %>   

n1 : <%=n1 %><br> 
n2 : <%=n2 %><br> 
op : <%=op %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>계산 응답 페이지</h1>
<hr>

<% if("add".equals(op)) { %>
	<%=n1 %> + <%=n2 %> = <%=n1+n2 %>

<% } else if("sub".equals(op)) { %>
	<%=n1 %> - <%=n2 %> = <%=n1-n2 %>

<% } else if("mul".equals(op)) { %>
	<%=n1 %> * <%=n2 %> = <%=n1*n2 %>

<% } else if("div".equals(op)) { %>
	<%=n1 %> / <%=n2 %> = <%=(double)n1/n2 %>

<% } %>


<a href="./ajax_01.jsp"><button>다시 계산</button></a>

</body>
</html>