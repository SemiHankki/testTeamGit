<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.jsp.notice.model.vo.*"%>
<%
	Notice n = (Notice)request.getAttribute("notice");
%>
<%@ page import="java.util.*, com.kh.jsp.notice.model.vo.Notice" %>
<% ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 세부내용</title>
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
           
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">           
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">

<style>
.outer{
		width:900px;
		height:600px;
		background:rgb(248, 240, 211);
		color: black;
		margin-left:auto;
		margin-right:auto;
		margin-top:130px;
		padding-top: 10px;
	}
	 
.rowarea {
         margin-left: 20px; 
         margin-right: 20px; 
         height: 75%; 
         background-color: white;
         
     }	 
	
	
 .content {width: auto;}
 
 p {font-size: 18px; font-family: 'InfinitySans-RegularA1';}
 
 @font-face {
    font-family: 'InfinitySans-RegularA1';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
 
 .button1 { 
      width: 100px;
     height: 40px;
     background-color: green;
     border: none;
     color: white;
     border-radius: 5px;
     font-family: 'InfinitySans-RegularA1';
     } 
</style>  
 
</head>
<body>

    <%@ include file="../common/header.jsp"%>
     <br><br><br><br><br><br><br>
     <div class="outer">
		
		<h2 align="center" style="font-family: 'InfinitySans-RegularA1';">공지 사항</h2>
		
		
		<div class="rowarea"  style="border: 3px solid green;">
				<div class="col-md-12" style= "height: 80%;">
				     <div style= "height: 35px; padding-top:20px;">
					    <p>&nbsp;&nbsp; 제목 : &nbsp;<%= n.getN_title() %></p>
					</div>		
					<hr>			
					<div style= "height: 15px;">
						<p>&nbsp;&nbsp; 작성자 : &nbsp;<%= n.getN_writer() %></p>	
					</div>
					<hr>
					<div style= "height: 15px;">
					    <p>
					    &nbsp;&nbsp; 작성일 : &nbsp;<%= n.getN_date() %>
						&nbsp;&nbsp; 조회수 : &nbsp;<%= n.getN_count() %>
						&nbsp;&nbsp; 첨부파일 : &nbsp;<%= n.getN_attachment() %>
						</p>
					</div>
					<hr>
					<div style= "height: 250px;"> 
						<p class="content"><br>
							<span>&nbsp;&nbsp;<%= n.getN_content().charAt(0) %></span><%= n.getN_content().substring(1) %>
						</p>
					</div>	
					<br>
					<div align="center">
					   <button class= "button1" onclick="location.href='SelectList.no'">뒤로가기</button>
				    </div>				
				</div>
		   </div>
		</div>
	

    <br><br><br><br>
    <%@ include file="../common/footer.jsp"%>
</body>
</html>