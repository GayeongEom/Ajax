<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% int n1 = Integer.parseInt(request.getParameter("num1")); %>
<% int n2 = Integer.parseInt(request.getParameter("num2")); %>
<% String op = request.getParameter("oper"); %> 

<div>
<% if("add".equals(op)) { %>
	<%=n1 %> + <%=n2 %> = <%=n1+n2 %>

<% } else if("sub".equals(op)) { %>
	<%=n1 %> - <%=n2 %> = <%=n1-n2 %>

<% } else if("mul".equals(op)) { %>
	<%=n1 %> * <%=n2 %> = <%=n1*n2 %>

<% } else if("div".equals(op)) { %>
	<%=n1 %> / <%=n2 %> = <%=(double)n1/n2 %>

<% } %>
</div>

