<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% int n1 = Integer.parseInt(request.getParameter("n1")); %>
<% int n2 = Integer.parseInt(request.getParameter("n2")); %>
<% String op = request.getParameter("op"); %> 

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

