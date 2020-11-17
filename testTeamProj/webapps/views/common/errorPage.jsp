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

<style>
.outer{
		padding: 20px;
		width:600px;
		height:300px;
		background:white;
		border: 5px dashed green;
		color:black;
		margin-left:auto;
		margin-right:auto;
		margin-top: 110px;
		padding-top:30px;
		 font-family: 'InfinitySans-RegularA1';
	}
#letter {
	font-size:17pt;
	
	color: navy;
}

  
     @font-face {
    font-family: 'InfinitySans-RegularA1';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

</style>
</head>
<body>
<%@ include file="../common/header.jsp" %>
   <br><br><br><br><br><br><br>
	<div class="outer" style="text-align: center;">
		<h1>Service Error</h1>
		<h3 style="color:navy;">ERROR : <%= e.getMessage() %></h3><br>
		<h4><span id="letter">서</span>비스 수행 중 에러가 발생했습니다. 전송 값을 확인해 보시고,<br><br>
		이상이 없을 시 부서 담당자에게 연락하시기 바랍니다.</h4>
	</div>
	<br><br><br>
<%@ include file="../common/footer.jsp" %>
</body>
</html>