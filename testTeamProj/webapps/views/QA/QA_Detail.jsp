<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.jsp.qa.model.vo.*"%>
<%
	Qa q = (Qa)request.getAttribute("Qa");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 1:1문의 세부내용</title>
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>

<style>
.outer{
		width:800px;
		height:600px;
		background:rgb(248, 240, 211);
		color: black;
		margin-left:auto;
		margin-right:auto;
		margin-top:130px;
		padding-top: 10px;
		 font-family: 'InfinitySans-RegularA1';
	}
	 
.rowarea {
         margin-left: 20px; 
         margin-right: 20px; 
         height: 75%; 
         background-color: white;
     }	 
	
.content {width: auto;}

    
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
		<h2 align="center">1:1문의 내용</h2>
		
		<div class="rowarea"  style="border: 3px solid green;">
				<div class="col-md-12" style= "height: 80%;">
				     <div style= "height: 35px; padding-top:20px;">
					    <p>&nbsp;&nbsp; 제목 : &nbsp;<%= q.getQa_title() %></p>
					</div>		
					<hr>			
					<div style= "height: 15px;">
						<p>&nbsp;&nbsp; 작성자 : &nbsp;<%= q.getQa_writer() %></p>	
					</div>
					<hr>
					<div style= "height: 15px;">
					    <p>
					    &nbsp;&nbsp; 작성일 : &nbsp;<%= q.getQa_date() %>
						</p>
					</div>
					<hr>
					<div style= "height: 250px;"> 
						<p class="content">&nbsp;&nbsp; 내용 : &nbsp;
							<span><%= q.getQa_content().charAt(0) %></span><%= q.getQa_content().substring(1) %>
						</p>
					</div>	
					<br>
					<div align="center">
					   <button onclick="location.href='SelectList.qa'">뒤로가기</button>
				    </div>				
				</div>
		   </div>
		</div>
	

    <br><br><br><br>
    <%@ include file="../common/footer.jsp"%>
</body>
</html>