<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 조회</title>

<style>
header {
	height: 300px;
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
#dropdown_area{
	text-align: right;
}

</style>
</head>
<body>
	<header>
		<%@ include file="../common/header.jsp"%>
	</header>

	<div class="container" id="product_search">

	<div class="row">
		<div class="col-xs-12" id="header_text">
			<h1>상품 검색</h1>
			<br />
			<h4>남김없이 한끼의 상품을 검색해 보세요.</h4>
		</div>

		<div class="col-xs-12" id="space_area">
			<br />
		</div>

		<div class="col-xs-10"><br /></div>
		<div class="col-xs-2" id="dropdown_area">
		
			<div class="dropdown">
  				<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="false">
    				추천순 <span class="caret"></span>
  				</button>
  			
  				<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    				<li role="presentation"><a role="menuitem" href="#">인기순</a></li>
    				<li role="presentation"><a role="menuitem" href="#">신 상품순</a></li>
    				<li role="presentation"><a role="menuitem" href="#">낮은 가격순</a></li>
    				<li role="presentation"><a role="menuitem" href="#">높은 가격순</a></li>
  				</ul>
			</div>
		
		</div>

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
	<br />
	<br />
	<br />
	<footer>
		<%@ include file="../common/footer.jsp"%>
	</footer>
</body>
</html>