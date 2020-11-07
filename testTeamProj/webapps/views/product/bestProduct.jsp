<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>베스트 상품</title>

<style>
header {
	height: 230px;
}

#header_text {
	text-align: center;
}

#paging{
	text-align: center;
}

#space_area{
	height: 20px;
}

/*side bar*/
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

</style>
</head>
<body>
	<header>
		<%@ include file="../common/header.jsp"%>
	</header>
	
	<br />	
	<!-- right-side fixed bar -->
	<div class="col-xs-1 col-xs-offset-10 affix" id="aside">
		<a href="#">
			<img src="<%= request.getContextPath()%>/resources/images/grenn_delivery.png"/>
		</a>
		
		<!-- <div class="col-xs-12"><br /> <br /></div>-->
		
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

	<div class="container" id="product_search">

	<div class="row">
		<div class="col-xs-12" id="header_text">
			<h1>남김없이 한끼 베스트 상품</h1>
			<br />
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
    				<a role="menuitem" href="#">인기순</a>
    				<a role="menuitem" href="#">신상품순</a>
    				<a role="menuitem" href="#">낮은 가격순</a>
    				<a role="menuitem" href="#">높은 가격순</a>
  				</div>
			</div>
        <!-- End sidebar dropdown -->
        
		<div class="col-xs-12" id="space_area">
			<br />
		</div>

			<div class="col-xs-4">
				<a href="<%=request.getContextPath()%>/views/product/product_detail.jsp" class="thumbnail"
				target="_blank">
				 <img src="<%=request.getContextPath()%>/resources/images/sample_images_01.png" />
				</a>
				<div class="caption">
					<h3>test caption1</h3>
					<p>test comment1</p>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_02.png" />
				</a>
				<div class="caption">
					<h3>test caption2</h3>
					<p>test comment2</p>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_03.png" />
				</a>
				<div class="caption">
					<h3>test caption3</h3>
					<p>test comment3</p>
				</div>
			</div>

			<div class="col-xs-12" id="space_area">
				<br />
			</div>

			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_04.png" />
				</a>
				<div class="caption">
					<h3>test caption4</h3>
					<p>test comment4</p>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_05.png" />
				</a>
				<div class="caption">
					<h3>test caption5</h3>
					<p>test comment5</p>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_06.png" />
				</a>
				<div class="caption">
					<h3>test caption6</h3>
					<p>test comment6</p>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
	<!-- paging -->
	<nav id="paging">
		<ul class="pagination">
			<li>
				<a href="#" aria-label="Previous"> 
					<span aria-hidden="true">&laquo;</span>
				</a>
			</li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li>
				<a href="#" aria-label="Next">
					 <span aria-hidden="true">&raquo;</span>
				</a>
			</li>
		</ul>
	</nav>
	<!-- paging End-->
	<br />
	<br />
	<br />
	<footer>
		<%@ include file="../common/footer.jsp"%>
	</footer>
</body>
</html>