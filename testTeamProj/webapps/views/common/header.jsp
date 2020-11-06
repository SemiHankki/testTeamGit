<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 이미지 아이콘 사용하기 위한 스타일 시트 가져옴. -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<style>

#header_area {
	height: 230px;
	z-index: 999999;
	background-color: white;
}

#headmenu {
	font-size: 16px;
	padding: 10px;
	text-align: left;
}

#logo_area {
	text-align: center;
}

#nav_area {
	text-align: center;
	font-size: 25px;
}

#nav_container {
	height: 60px;
	border: 2px solid black;
	line-height: 60px;
}

.nav-item{
	width: 160px;
	border: 1px solid red;
}

.search_area{
	width: 330px;
}

#category{
	list-style: none;
}

</style>
</head>



<body>
	<div class="col-xs-12" data-spy="affix" id="header_area">
		<div class="row">
			<div class="col-xs-2 col-xs-offset-5" id="logo_area">
				<a href="<%=request.getContextPath()%>"> <img
					src="<%=request.getContextPath()%>/resources/images/hankki_logo.jpg">
				</a>
			</div>
			<div class="col-xs-4 col-xs-offset-1" id="headmenu">
				<ul class="list-inline">
					<li><a href="#">회원가입</a></li>
					<li><a href="#">로그인</a></li>
					<li><a href="#">주문 배송</a></li>
					<li><a href="#">고객센터</a></li>
					<li><a
						href="<%=request.getContextPath()%>/views/admin/product_manage.jsp">admin</a>
					</li>
				</ul>
			</div>

			<div class="col-xs-12" id="nav_area">
				<div class="container" id="nav_container">

					<div class="nav-item col-xs-2">
						<a href="#">카테고리</a>
					</div>
					<div class="nav-item col-xs-2">
						<a href="#">신상품</a>
					</div>
					<div class="nav-item col-xs-2">
						<a href="#">베스트</a>
					</div>
					<div class="nav-item col-xs-2">
						<a href="#">알뜰 쇼핑</a>
					</div>
					<div class="nav-item col-xs-2">
						<a href="#">이벤트</a>
					</div>
					<div class="search_area col-xs-2">
						<div class="input-group">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">Go!</button>
							</span> <input type="text" class="form-control"
								placeholder="Search for..." style="margin-top: 13px;">
						</div>
					</div>
					<div class="col-xs-5" id="dropdown_mewnu" style="border:1px solid red;">
						<div class="col-xs-6" style="border: 1px solid green;"></div>
						<br />
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>
