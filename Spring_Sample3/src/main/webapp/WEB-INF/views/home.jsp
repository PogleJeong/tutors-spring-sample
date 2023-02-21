<%@page import="mul.cam.a.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	List<MemberDto> list = (List<MemberDto>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>home</h1>
	<table border="1">
		<tr>
			<th>번호</th><th>id</th><th>pw</th><th>name</th><th>email</th>
		</tr>
		<%
		for (int i=0; i < list.size(); i++) {
				MemberDto dto = list.get(i);
			%>
			<tr>
				<th><%=i + 1 %></th>
				<td><%=dto.getId() %></td>
				<td><%=dto.getPwd() %></td>
				<td><%=dto.getName() %></td>
			</tr>
			
			<%
		}
		%>
	</table>

</body>
</html>