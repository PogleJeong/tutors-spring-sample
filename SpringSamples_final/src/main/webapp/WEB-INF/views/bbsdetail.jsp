<%@page import="mul.cam.a.dto.MemberDto"%>
<%@page import="mul.cam.a.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
th{
	background-color: #007bff;
	color: white;
}
pre{
	white-space: pre-wrap;
	word-break:break-all;
	overflow: auto;
}
</style>

</head>
<body>

<%	
	BbsDto dto = (BbsDto)request.getAttribute("bbsdto");
%> 

<h1>상세 글보기</h1>

<hr>

<div id="app" class="container">

<table class="table table-striped table-sm">
<colgroup>
	<col style="width: 150px"/>
	<col style="width: 500px"/>
</colgroup>

<tr>
	<th>작성자</th>
	<td><%=dto.getId() %></td>
</tr>

<tr>
	<th>작성일</th>
	<td><%=dto.getWdate() %></td>
</tr>
<tr>
	<th>조회수</th>
	<td><%=dto.getReadcount() %></td>
</tr>
<tr>	
	<td colspan="2" style="font-size: 22px;font-weight: bold;"><%=dto.getTitle() %></td>
</tr>
<tr>	
	<td colspan="2" style="background-color: white;">
		<pre style="font-size: 20px;font-family: 고딕, arial;background-color: white"><%=dto.getContent() %></pre>
	</td>
</tr>
</table>

<br>
<button type="button" class="btn btn-primary" onclick="answerBbs(<%=dto.getSeq() %>)">답글</button>

<button type="button" class="btn btn-primary" onclick="location.href='bbs?param=bbslist'">글목록</button>

<%
MemberDto login = (MemberDto)session.getAttribute("login");
if(dto.getId().equals(login.getId())){
	%>
	<button type="button" class="btn btn-primary" onclick="updateBbs(<%=dto.getSeq() %>)">수정</button>
	
	<button type="button" class="btn btn-primary" onclick="deleteBbs(<%=dto.getSeq() %>)">삭제</button>
	<%
}
%>

</div>

<script type="text/javascript">
function answerBbs( seq ) {
	location.href = "message.do?param=answer&seq=" + seq;
}
function updateBbs( seq ) {
	location.href = "bbsupdate.do?param=bbsupdate&seq=" + seq;
}
function deleteBbs( seq ) {
	location.href = "bbsdelete.do?param=bbsdelete&seq=" + seq;  // update del=1
}
</script>

</body>
</html>




