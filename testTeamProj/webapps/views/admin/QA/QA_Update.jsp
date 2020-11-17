<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.jsp.qa.model.vo.*"%>
<% Qa q = (Qa)request.getAttribute("qa"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 수정</title>
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>

<style>
	#box1 {
		background : whitesmoke;
		height : 100%;
	}
	
	#box1 div {
		padding : 10px 30px;
		margin-top : 2px;
		border : 1px solid gray;
	}
	
	#box1 div input {
		width : 90%;
	}
	
	textarea {
		width : 100%;
	}
	
</style>
</head>
<body>
	<%@ include file="/views/common/adminMenu.jsp" %>
	<hr />
	<br /><br />
	<div class="row">
		<div class="col-md-2 col-md-offset-3" style="font-size : 30px">Q&A 답글달기</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-6 col-md-offset-3" id="box1">
			<div>
				<span>글 제목 : </span><input type="text" value="<%= q.getQa_title()%>"/>
			</div>
			<div>
				<span>작성자 : </span><input type="text" value="<%= q.getQa_writer() %>" />
			</div>
			<div>
				<span>작성일 : </span><input type="text" value="<%= q.getQa_date() %>" />
			</div>
			<div id="QA_content">
				<span>글 내용</span><br><textarea rows="7" style="resize : none"></textarea>
			</div>
			<hr />
			<div id="QA_answer">
				<span>답글 달기</span><br><textarea rows="7" style="resize : none"></textarea>
			</div>
			<div align="center" style="border : none">
				<button type="submit" class="btn btn-success btn-sm" onclick="complete();">답글 등록</button> &nbsp;
				<button class="btn btn-danger btn-sm" onclick="deleteNotice();">취소하기</button>
			</div>
		</div>
	</div>
	
	 <script>
		function complete(){
			$("#updateForm").attr("action","<%=request.getContextPath() %>/Update.qa");
			
		}
	
		function deleteNotice(){
			$("#updateForm").attr("action","<%=request.getContextPath() %>/Delete.qa");
		}
	
		</script>
	<br><br><br><br><br><br><br>
	
</body>
</html>

















s