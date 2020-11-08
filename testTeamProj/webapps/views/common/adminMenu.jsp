<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<meta charset="UTF-8">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>


 li.group div.title {
     height: 35px;
     line-height: 35px;
     background: #9ab92e;
     cursor: pointer;
 }
 
 ul.sub li {
     height: 35px;
     line-height: 35px;
     background: whitesmoke;;
     cursor: pointer;
 }
 
 ul.sub li a {
     display: block;
     width: 100%;
     height: 100%;
     text-decoration: none;
     color: #000;
 }
 
 ul.sub li:hover {
     background: gray;
     transition-duration: 0.5s;
 }
 
 ul.sub li:hover a {
     color : white;
     transition-duration: 0.5s;
 }
 
 li strong {
     float: right;
 }
 
 div#head-box {
     width : 100%;
     height : auto;
 }
 
 #head-box>img {
     position : relative;
     text-align: center;
     left : 45%;
 }
 
 #top_bar>ul>li {
     display : inline-block;
     padding : 7px;
     float : left;
     background : whitesmoke;
     cursor : pointer;
     border : 1px solid black;
 }
 
 #top_bar>ul>li:hover {
     background : gray;
     transition-duration: 0.5s;
 }
 
 #top_bar>ul>li:hover a {
     color : white;
     transition-duration: 0.5s;
 }
 
 #top_bar>ul>li>a {
     text-decoration: none;
     color : black;
     width : 100%;
     height : 100%;
     display : block;
 }
 
 #top_bar>ul {
     position : absolute;
     top : 0;
     right : 10px;
 }
    
    
#admin_menu_area{
	top: 100px;
	right: 10px;
}

#admin_menu_area > table{
    width: 180px;
    border: 2px solid black;
    margin: 10% 10%;
    padding-top: 30px;
    font-family: "맑은 고딕";
    font-size: 0.9em;
    position : absolute;
}

</style>
</head>
<body>

	    <div id="head-box">
         <div id="top_bar">
            <ul>
                <li><a href="#">관리자 페이지</a></li>
                <li><a href="#">로그아웃</a></li>
            </ul>
         </div>
            <div class="col-md-2 col-md-offset-5" id="logojpg" style="text-align: center;">
				<a href="<%=request.getContextPath()%>"><img
					src="<%=request.getContextPath()%>/resources/images/final_logo.JPG" height="140px" width="190px">
				</a>
			</div>
       </div>

        <div class="row">
		  <div class="col-xs-12">
			<div class="col-xs-1 col-xs-offset-1" id="admin_menu_area">
				<table class="table table-hover" id="admin_menu">
				
					<tr>
						<td><a href="<%=request.getContextPath()%>/resources/views/admin/User/User_Manage.jsp">회원 관리</a></td>
					</tr>					
					<tr>
						<td><a href="#">회원 등급 관리</a></td>
					</tr>
					<tr>
						<td><a href="<%=request.getContextPath()%>/resources/views/admin/Product/product_Manage.jsp">상품 관리</a></td>
					</tr>
					<tr>
						<td><a href="<%=request.getContextPath()%>/resources/views/admin/Recipe/recipe_Manage.jsp">레시피 관리</a></td>
					</tr>
					<tr>
						<td><a href="<%=request.getContextPath()%>/resources/views/admin/Advertise/AD_Manage.jsp">광고 관리</a></td>
					</tr>
					<tr>
						<td><a href="#">이벤트 관리</a></td>
					</tr>
					<tr>
						<td><a href="#">공지 사항 관리</a></td>
					</tr>
					<tr>
						<td><a href="#">Q&A 관리</a></td>
					</tr>
					<tr>
						<td><a href="#">1 : 1 문의 관리</a></td>
					</tr>
				</table>
			</div>
          </div>
         </div>
	<!-- 		
    <div id="nav-box">
        <ul id="navi">
            <ul class="sub">
                <li><strong>>&nbsp;</strong><a href="/Semi/views/admin/User/UserManage.jsp">회원 관리</a></li>
                <li><strong>>&nbsp;</strong><a href="#">회원 등급 관리</a></li>
                <li><strong>>&nbsp;</strong><a href="#">상품 관리</a></li>
                <li><strong>>&nbsp;</strong><a href="#">레시피 관리</a></li>
                <li><strong>>&nbsp;</strong><a href="/Semi/views/admin/Advertise/AD_Manage.jsp">광고 관리</a></li>
                <li><strong>>&nbsp;</strong><a href="#">이벤트 관리</a></li>
                <li><strong>>&nbsp;</strong><a href="#">공지 사항 관리</a></li>
                <li><strong>>&nbsp;</strong><a href="#">Q&A 관리</a></li>
                <li><strong>>&nbsp;</strong><a href="#">1 : 1 문의 관리</a></li>
            </ul>
        </ul>
    </div>
	-->
</body>
</html>








