<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%
	String msg = (String)request.getAttribute("error-msg");
	Exception e = (Exception)request.getAttribute("exception");	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 에러 페이지</title>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

<style>
.outer{
		padding: 20px;
		width:600px;
		height:500px;
		background:black;
		color:white;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
span {
	font-size:17pt;
	background: white;
	color: navy;
}

   h1, h3, h4 {font-family: 'Do Hyeon', sans-serif;}

</style>
</head>
<body>
<%@ include file="../common/header.jsp" %>
	<div class="outer">
		<h1>Service Error</h1>
		<h3 style="color:hotpink;">ERROR : <%= e.getMessage() %></h3>
		<h4><span>서</span>비스 수행 중 에러가 발생했습니다. 전송 값을 확인해 보시고,<br>
		이상이 없을 시 부서 담당자에게 연락하시기 바랍니다.</h4>
	</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>