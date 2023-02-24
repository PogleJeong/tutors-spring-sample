<%@page import="mul.cam.a.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
// controller 에서 글 내용가져오는 기능함
BbsDto getCheckedBoard = (BbsDto)request.getAttribute("getCheckedBoard"); // controller 에서 model.addAttribute 한 property 가져오기
%>

<h1>글 수정하기</h1>

<div align="center">
	<form action="bbsupdateAf.do" id="frm" method="post">
		<table border="1">
			<col width="200"><col width="500">
			
			<tr>
				<th>아이디</th>
				<td>
					<input type="hidden" name="id" value="<%=getCheckedBoard.getId() %>" readonly="readonly">
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>
					<input type="text" id="title" name="title" size="50px" class="form-control form-control-lg" value="<%=getCheckedBoard.getTitle() %>">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="10" id="content" name="content" class="form-control" placeholder="내용기입"><%=getCheckedBoard.getContent() %></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<!-- <input type="submit" value="글쓰기"> -->
					<input type="submit" value="수정하기">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>