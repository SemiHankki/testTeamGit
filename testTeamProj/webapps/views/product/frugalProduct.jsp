<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>알뜰 상품</title>

<style>
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

/*more_btn*/
#more_btn {float: right; margin-right: 20px; background-color: white; border: none; font-size: 20px;}

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
			<h1>남김없이 한끼 알뜰 식재료</h1>
			<br />
		</div>

		<div class="col-xs-10" id="space_area">
			<br />
		</div>
		
		<div class="col-xs-12" id="header_text">
			<h3 style="float: left; margin-left: 5px;">과일류</h3>
			<br />
		</div>

			<div class="col-xs-4">
				<a href="<%=request.getContextPath()%>/views/product/product_detail.jsp" class="thumbnail"
				target="_blank">
				 <img src="<%=request.getContextPath()%>/resources/images/sample_images_01.png" />
				</a>
				<div class="caption">
					<h3>test caption1</h3>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_02.png" />
				</a>
				<div class="caption">
					<h3>test caption2</h3>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_03.png" />
				</a>
				<div class="caption">
					<h3>test caption3</h3>
				</div>
			</div>
			
			<a href="#"><button type="button" id="more_btn">더보기></button></a>

			<div class="col-xs-12" id="space_area">
			  <hr style="border-top: 1px solid black;"/>
			</div>
			
			<div class="col-xs-12" id="space_area">
			  <br>
			</div>
			
			<div class="col-xs-12" id="header_text">
			 <h3 style="float: left; margin-left: 5px;">채소류</h3>
			 <br />
		    </div>

			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_04.png" />
				</a>
				<div class="caption">
					<h3>test caption4</h3>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_05.png" />
				</a>
				<div class="caption">
					<h3>test caption5</h3>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_06.png" />
				</a>
				<div class="caption">
					<h3>test caption6</h3>
				</div>
			</div>
			
			<a href="#"><button type="button" id="more_btn">더보기></button></a>
			
			<div class="col-xs-12" id="space_area">
			  <hr style="border-top: 1px solid black;"/>
			</div>
			
			<div class="col-xs-12" id="space_area">
			  <br>
			</div>
			
			<div class="col-xs-12" id="header_text">
			 <h3 style="float: left; margin-left: 5px;">견과류</h3>
			 <br />
		    </div>

			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_04.png" />
				</a>
				<div class="caption">
					<h3>test caption4</h3>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_05.png" />
				</a>
				<div class="caption">
					<h3>test caption5</h3>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_06.png" />
				</a>
				<div class="caption">
					<h3>test caption6</h3>
				</div>
			</div>
			
			<a href="#"><button type="button" id="more_btn">더보기></button></a>
			
			<div class="col-xs-12" id="space_area">
			  <hr style="border-top: 1px solid black;"/>
			</div>
			
			<div class="col-xs-12" id="space_area">
			  <br>
			</div>
			
			<div class="col-xs-12" id="header_text">
			 <h3 style="float: left; margin-left: 5px;">버섯류</h3>
			 <br />
		    </div>

			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_04.png" />
				</a>
				<div class="caption">
					<h3>test caption4</h3>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_05.png" />
				</a>
				<div class="caption">
					<h3>test caption5</h3>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> <img
					src="<%=request.getContextPath()%>/resources/images/sample_images_06.png" />
				</a>
				<div class="caption">
					<h3>test caption6</h3>
				</div>
			</div>
			
			<a href="#"><button type="button" id="more_btn">더보기></button></a>
			
		</div>
	</div>
	<br />
	<br />
	<!--paging-->	
		</div>
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