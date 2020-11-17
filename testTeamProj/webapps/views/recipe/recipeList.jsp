<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.kh.jsp.recipe.model.vo.*"%>	
<% ArrayList<Recipe> list = (ArrayList<Recipe>) request.getAttribute("list"); %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피 목록 페이지</title>

<style>

 @font-face {
    font-family: 'InfinitySans-RegularA1';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

header {
	height: 230px;
}

#header_text {
	text-align: center;
}

#space_area{
	height: 20px;
}

/*side bar*/
#aside {padding-right: 20px;}

#aside_table{
	width: 110px;	
}

#aside > table {
	text-align: center;
}

#aside_table > tbody > tr >td{
	border-left: 2px solid black;
	border-right: 2px solid black;
}

#row1{
	border-top: 2px solid black;
}

#row3{
	border-bottom: 2px solid black;
}

#aside_table > tbody > tr > td > a{
	text-decoration: none;
	color: black;
}

/* Dropdown Button */
#dropdown_area{
	text-align: right;
}

.dropdown {
  position: relative;
  display: inline-block;
  float: right;
  margin-top: 0px;
  margin-right: 20px;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: white;
  min-width: 120px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 10px 14px;
  text-decoration: none;
  display: block;
  text-align: center;
}


#dropdown_area{
	text-align: right;
}

.dropdown-content a:hover, dropdown-menu a:hover {background-color: rgb(248,240,211);}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: white;}

#r_picture {border-radius: 8px; border: 1px solid black;}

/* paging */
#pagination {
	text-align: center;	
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	text-align: center;
	border: 1px solid lightgrey;
}

.pagination a.active {
	background-color: rgb(46, 143, 88);
	color: white;
}

.pagination a:hover:not (.active ) {
	background-color: #ddd;
}

</style>
</head>
<body>
	<header>
		<%@ include file="../common/header.jsp"%>
	</header>
	
	<br />
	<!-- right-side fixed bar -->
	<div class="col-xs-1 col-xs-offset-10 affix" id="aside">
		<a href="<%= request.getContextPath()%>/views/delivery/greenDelivery.jsp">
			<img src="<%= request.getContextPath()%>/resources/images/grenn_delivery.png"/>
		</a>

		<table class="table table-hover" id="aside_table">
		<tbody>
			<tr>
				<td id="row1">
					<a href="#">등급별 혜택</a>
				</td>
			</tr>
			<tr>
				<td id="row2">
					<a href="<%= request.getContextPath()%>/views/recipe/recipeList.jsp">레시피</a>
				</td>
			</tr>
			<tr>
				<td id="row3">
					<a href="#">베스트 후기</a>
				</td>
			</tr>
			</tbody>
		</table>
	</div>
	<!-- right-side fixed bar End-->

	<div class="container" id="recipe">

	<div class="row" style="font-family: 'InfinitySans-RegularA1';">
		<div class="col-xs-12" id="header_text">
			<h1>남김없이 한끼의 레시피</h1>
		</div>

		<div class="col-xs-10" id="space_area">
			<br />
		</div>

		<div class="col-xs-10"><br /></div>
		
		 <!-- sidebar dropdown -->
         	<div class="dropdown">
  				<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="false">
    				추천순 <span class="caret"></span>
  				</button>
  			
  				<div class="dropdown-content" role="menu" aria-labelledby="dropdownMenu1">
    				<a role="menuitem" href="#">조회순</a>
    				<a role="menuitem" href="#">최근순</a>
    				<a role="menuitem" href="#">오래된순</a>
  				</div>
			</div>
        <!-- End sidebar dropdown -->
        
		<div class="col-xs-12" id="space_area">
			<br />
		</div>
             <%
				for (Recipe r : list) {
			%>
			<div class="col-xs-6" id= "r_thumbnail">
				<a href="../recipeDetail.jsp" class="thumbnail" target="_blank">
				  <img id="r_picture" src="<%=request.getContextPath()%>/resources/itemUploadFile/<%=r.getRb_attachment()%>" />
				</a>
				<div class="caption" style="text-align: center;">
					<h3><!-- 치즈 조개구이--><%=r.getRb_title()%></h3>
					<p style="display: inline">
					   <img id="s_button" src="<%=request.getContextPath()%>/resources/itemUploadFile/<%=r.getRb_attachment()%>" width="30px" height="30px">
					   <img id="s_button" src="<%=request.getContextPath()%>/resources/itemUploadFile/<%=r.getRb_attachment()%>" width="30px" height="30px">
					</p>
				</div>
			</div>
			<%
				}
			%>
         
			<div class="col-xs-12" id="space_area">
				<br />
			</div>
			
			<script>
				$('#r_tubmnail').css('height', '300px');
				$('#r_tubmnail > a > img').css('height',
						$('#r_tubmnail').css('height'));
				$('#r_tubmnail > a > img').css('width',
						$('#r_tubmnail').css('width'));
			</script>
	    </div>
     </div> 
           
	<br />
	<br />

	    <!--paging-->	
         <div class="col-md-12" id="pagination">
		   <div class="pagination" style="text-align: center;">
            <a href="#">&laquo;</a>
            <a href="#">1</a>
            <a class="active" href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">&raquo;</a>
          </div>
        </div>
        <!--paging End-->
	<br><br><br><br><br><br>
	
	<footer>
		<%@ include file="../common/footer.jsp"%>
	</footer>
</body>
</html>