<%@page import="dto.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% List<Member> list = (List)request.getAttribute("list"); %>

<table>
<% for(int i=0; i<list.size(); i++) { %>
<tr>
	<td><%=list.get(i).getId() %></td>
	<td><%=list.get(i).getPw() %></td>
</tr>
<% } %>
</table>
