<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 제이쿼리 불러오기 -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 부트스트랩 사용 선언 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.js"></script>

<!-- 부트스트랩 css 사용 -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.css" />

<!-- 이미지 아이콘 사용하기 위한 스타일 시트 가져옴. -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style>
#container {
	width: 100%;
	height: 140px;
	z-index: 999999;
	background-color: white;
}

#headmenu {
	font-size: 16px;
	padding: 10px;	
}


/*menu css*/
#nav_container {
	height: 58px;
	line-height: 58px;
	background-color: rgb(46,143,88);
	border-radius: 8px;
}

.nav-item {
	height: 58px;
	width: 160px;
	font-size: 20px;
	text-align: center;
}

.search_area {
	height: 58px;
	width: 330px;
}

.nav-item > a{
	text-decoration: none;
	color: black;
}

/*menu category dropdown*/
#dropdown_category > a{
	text-decoration: none;
	color: black;
}

#dropdown_category {
	height: 58px;
	width: 160px;
	font-size: 20px;
}

.dropdown-menu > li > a > p {
	font-size: 16px;
	text-align: center;
}

.dropdown-menu > li> a > p:link {
    font-size: 16px;
	text-align: center;
	background-color: white;
	color: black;
	border-top: 1px solid green;
}

.dropdown-menu > li > a > p:hover {
	/*border: 2px solid green;*/
	color: green;	
}

.dropdown-menu > li {
	color: green;
	background-color: lemon;
	border: 1px solid green;	
}

</style>

</head>
<body>
   
	<header class="main_menu_area">
		<div class="container" data-spy="affix" id="container">
		<div class="row">
		    <!-- logo's area -->
			<div class="col-md-2 col-md-offset-5" id="logojpg" style="text-align: center;">
				<a href="<%=request.getContextPath()%>"><img
					src="<%=request.getContextPath()%>/resources/images/final_logo.JPG" height="140px" width="190px">
				</a>
			</div>
			<!-- logo's area End-->
			
			<!-- top-right menu area -->
			<div class="col-md-offset-8" id="headmenu">
				<ul class="list-inline">
					<li><a href="<%=request.getContextPath()%>/views/member/signup.jsp">회원가입</a></li>
					<li><a href="<%=request.getContextPath()%>/views/member/loginForm.jsp">로그인</a></li>
					<li><a href="<%=request.getContextPath()%>/views/order/orderList.jsp">주문배송</a></li>
					<li><a href="<%=request.getContextPath()%>/views/notice/noticeList.jsp">고객센터</a></li>
					<li><a href="<%=request.getContextPath()%>/views/shoppingCart/shopping_cart.jsp"><img src="<%=request.getContextPath()%>/resources/images/shopping_cart.png" width="20px" height="20px"></a></li>
				</ul>
			</div>
		</div>
		            
		<!-- top-right menu area End-->
		
		<!-- middle menu area -->
		<div class="col-xs-12" id="nav_area"></div>
			<div class="container" id="nav_container">

				<div class="col-xs-2" id="dropdown_category">
					<a class="category_dropmenu dropdown-toggle" data-toggle="dropdown">
					<img src="<%=request.getContextPath()%>/resources/images/three_line.png" 
					     width="20px" height="20px" style="margin-bottom: 5px; margin-right: 10px;">카테고리</a>

					<ul class="dropdown_item dropdown-menu" role="menu"> 
						<li><a href="<%=request.getContextPath()%>/views/product/fruit.jsp"><p>과일류</p></a></li>
						<li><a href="<%=request.getContextPath()%>/views/product/vegetable.jsp"><p>채소류</p></a></li>
						<li><a href="<%=request.getContextPath()%>/views/product/meat.jsp"><p>육류</p></a></li>
						<li><a href="<%=request.getContextPath()%>/views/product/fish.jsp"><p>해산물류</p></a></li>
						<li><a href="<%=request.getContextPath()%>/views/product/easy_cook.jsp"><p>간편식</p></a></li>
						<li><a href="<%=request.getContextPath()%>/views/product/meal_kit.jsp"><p>밀키트</p></a></li>		
					</ul>
				</div>

				<script>
					$(document).ready(function() {
						$('.category_dropmenu').mouseover(function() {
							$('.dropdown_item').show();
						})

						$('.category_dropmenu').mouseout(function() {
							t = setTimeout(function() {
								$('.dropdown_item').hide();
							}, 100);

							$('.dropdown_item').on('mouseenter', function() {
								$('.dropdown_item').show();
								clearTimeout(t);
							}).on('mouseleave', function() {
								$('.dropdown_item').hide();
							})
						})
					})
				</script>

				<div class="nav-item col-xs-2">
					<a href="<%=request.getContextPath()%>/views/product/newProduct.jsp">신상품</a>
				</div>
				<div class="nav-item col-xs-2">
					<a href="<%=request.getContextPath()%>/views/product/bestProduct.jsp">베스트</a>
				</div>
				<div class="nav-item col-xs-2">
					<a href="<%=request.getContextPath()%>/views/product/frugalProduct.jsp">알뜰 쇼핑</a>
				</div>
				<div class="nav-item col-xs-2">
					<a href="<%=request.getContextPath()%>/views/event/eventPage.jsp">이벤트</a>
				</div>
				<div class="search_area col-xs-2">
					<div class="input-group">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button" style="margin-top: 2px;">Go!</button>
						</span> <input type="text" class="form-control" placeholder="Search for..." style="margin-top: 13px;">
					</div>
				</div>
			</div>
			<!-- middle menu area End-->
		</div>

	</header>

</body>
</html>
