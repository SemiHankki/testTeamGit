<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>남김 없이 한끼</title>
<style>
header {
	height: 300px;
}

#advertisement {
	height: 500px;
}

.carousel-inner>.item>img {
	min-width: 100%;
	min-height: 400px;
	max-width: 100%;
	max-height: 400px;
}

</style>
</head>
<body>
	<header>
		<%@ include file="views/common/header.jsp"%>
	</header>

	<div class="container" id="advertisement">
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="<%=request.getContextPath()%>/resources/images/sample_images_01.png">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="<%=request.getContextPath()%>/resources/images/sample_images_02.png">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="<%=request.getContextPath()%>/resources/images/sample_images_03.png">
					<div class="carousel-caption">...</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">이전</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">다음</span>
			</a>
		</div>
		<div class="item" id="carousel-dotte">
			<div class="carousel-caption"></div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-xs-4">
				<a href="#" class="thumbnail">
					 <img src="<%=request.getContextPath()%>/resources/images/sample_images_01.png" />
				</a>
				<div class="caption">
					<h3>test caption1</h3>
					<p>test comment1</p>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> 
					<img src="<%=request.getContextPath()%>/resources/images/sample_images_02.png" />
				</a>
				<div class="caption">
					<h3>test caption2</h3>
					<p>test comment2</p>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> 
					<img src="<%=request.getContextPath()%>/resources/images/sample_images_03.png" />
				</a>
				<div class="caption">
					<h3>test caption3</h3>
					<p>test comment3</p>
				</div>
			</div>
			
			<div class="col-xs-12"><br /></div>
			<div class="col-xs-12"><br /></div>
			<div class="col-xs-12"><br /></div>
			<div class="col-xs-12"><br /></div>	
	
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> 
					<img src="<%=request.getContextPath()%>/resources/images/sample_images_04.png" />
				</a>
				<div class="caption">
					<h3>test caption4</h3>
					<p>test comment4</p>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> 
					<img src="<%=request.getContextPath()%>/resources/images/sample_images_05.png" />
				</a>
				<div class="caption">
					<h3>test caption5</h3>
					<p>test comment5</p>
				</div>
			</div>
			<div class="col-xs-4">
				<a href="#" class="thumbnail"> 
					<img src="<%=request.getContextPath()%>/resources/images/sample_images_06.png" />
				</a>
				<div class="caption">
					<h3>test caption6</h3>
					<p>test comment6</p>
				</div>
			</div>
		</div>
	</div>
		<br /><br /><br /><br /><br />
	
	<footer>
		<%@ include file="views/common/footer.jsp"%>
	</footer>
</body>
</html>