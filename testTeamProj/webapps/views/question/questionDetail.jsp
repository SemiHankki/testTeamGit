<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.jsp.question.model.vo.*"%>
<%
  Question qu = (Question)request.getAttribute("question");
%>
<%@ page import="java.util.*, com.kh.jsp.question.model.vo.Question" %>
<% ArrayList<Question> list = (ArrayList<Question>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주하는 질문 세부내용</title>
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>

<style>
.outer{
		width:800px;
		height:500px;
		background:rgb(248, 240, 211);
		color: black;
		margin-left:auto;
		margin-right:auto;
		margin-top:130px;
		padding-top: 10px;
		 font-family: 'InfinitySans-RegularA1';
	}
	
	.tableArea > table {
		width: 100%;
		height: 80%;
		padding: 20px;
		color: black;
		
	}

	.tableArea {
		background:white;
		width:80%;
		height:350px;
		margin:auto;
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

    <%@ include file="../common/header.jsp"%>
     <br><br><br><br><br><br><br>
     <div class="outer">
		<br>
		<h2 align="center">자주하는 질문 내용</h2>
		
		<div class="tableArea"  style="border: 3px solid green;">
				<table>
				     <tr style= "height: 40px; border-bottom: 2px solid green;">
						<td> &nbsp;글번호 : <%= qu.getQ_no() %></td>
						<td>작성자 : <%= qu.getQ_writer() %></td>						
						<td>첨부파일 : <%= qu.getQ_attachment() %></td>
					</tr>
					
					<tr>
						<td>&nbsp; 제목 : &nbsp;<%= qu.getQ_title() %></td>
					</tr>
					<tr> 
						<td>내용 :
							<span><%= qu.getQ_content().charAt(0) %></span><%= qu.getQ_content().substring(1) %>
						</td>
					</tr>					
				</table>
				<br>
				<div align="center">
					
					<button onclick="location.href='qSelectList.qu'">메뉴로 돌아가기</button>

				</div>
		   </div>
		</div>
	


    <br><br><br><br>
    <%@ include file="../common/footer.jsp"%>
</body>
</html>