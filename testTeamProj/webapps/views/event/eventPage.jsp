<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 페이지</title>

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
</style>


</head>
<body>

    <header>
		<%@ include file="../common/header.jsp"%>
	</header>

       <div class="container" id="event">
	    <div class="row">
		<div class="col-xs-12" id="header_text">
			<h1>EVENT</h1>
			<br />
		</div>
		
		<div class="col-xs-12" id="space_area">
			<br />
		</div>
           <div class="row">
            <div class="col-xs-1"></div>
			<div class="col-xs-10" style="text-align: center;">
				<a href="#" class="thumbnail" target="_blank">
				 <img src="<%=request.getContextPath()%>/resources/images/sample_images_01.png"  style="height: 300px; width: 100%; text-align: center;"/>
				</a>
				<div class="caption">
					<h3>이벤트 1</h3>
				</div>
			</div>
			<div class="col-xs-1"></div>
		   </div>
		   <br>
		   <div class="col-xs-12" id="space_area">
			<br />
			
		</div>
           <div class="row">
            <div class="col-xs-1"></div>
			<div class="col-xs-10" style="text-align: center;">
				<a href="#" class="thumbnail" target="_blank">
				 <img src="<%=request.getContextPath()%>/resources/images/sample_images_01.png"  style="height: 300px; width: 100%; text-align: center;"/>
				</a>
				<div class="caption">
					<h3>이벤트 2</h3>
				</div>
			</div>
			<div class="col-xs-1"></div>
		   </div>
		   <br>
		   <div class="col-xs-12" id="space_area">
			<br />
			
		</div>
           <div class="row">
            <div class="col-xs-1"></div>
			<div class="col-xs-10" style="text-align: center;">
				<a href="#" class="thumbnail" target="_blank">
				 <img src="<%=request.getContextPath()%>/resources/images/sample_images_01.png"  style="height: 300px; width: 100%; text-align: center;"/>
				</a>
				<div class="caption">
					<h3>이벤트 3</h3>
				</div>
			</div>
			<div class="col-xs-1"></div>
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