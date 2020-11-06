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

#nav {
   font-size: 20px;
   background-color: rgb(46,143,88);
}

.nav-item {
   margin: 0 30px;
   color: white;
}

#nav_menu > li > a {
    color: white;
}

#dropdown{
   margin: 0 48px;
}

#dropdown-menu{
   font-size: 20px;
   text-height: 20px;
}

header {height: 250px;}

#s_button {color: rgb(46,143,88);}
</style>

</head>


<body>
	<header class="main_menu_area">
		<div class="container" data-spy="affix" id="container">
		<div class="row">
			<div class="col-md-2 col-md-offset-5" id="logojpg" style="text-align: center;">
				<a href="<%=request.getContextPath()%>"><img
					src="<%=request.getContextPath()%>/resources/images/final_logo.JPG" height="140px" width="190px">
				</a>
			</div>
			<div class="col-md-offset-8" id="headmenu">
				<ul class="list-inline">
					<li><a href="<%=request.getContextPath()%>/views/member/signUp.jsp">회원가입</a></li>
					<li><a href="<%=request.getContextPath()%>/views/member/loginForm.jsp">로그인</a></li>
					<li><a href="<%=request.getContextPath()%>/views/order/orderList.jsp">주문 배송</a></li>
					<li><a href="<%=request.getContextPath()%>/views/notice/noticeList.jsp">고객센터</a></li>
					<li><a href="#"><img id="s_button" src="<%=request.getContextPath()%>/resources/images/shopping_cart.png" width="20px" height="20px"></a></li>
				</ul>
			</div>
		</div>
		<div class="row">
						<div class="col-md-8 col-md-offset-2" id="nav_col">
				<nav class="navbar navbar-default" id="nav">
					<ul class="nav navbar-nav" id="nav_menu">
						
						<li></li>
						<%-- 드랍다운 설정 --%>
						<li class="dropdown" id="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">카테고리 <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" id="dropdown-menu">
								<li><a href="#">채소,과일</a></li>
								<li><a href="#">수산,해산,건어물</a></li>
								<li><a href="#">정육,계란</a></li>
								<li><a href="#">샐러드,간편식</a></li>
							</ul>
						</li>
						<li class="nav-item"><a href="#">신상품</a></li>
						<li class="nav-item"><a href="#">베스트</a></li>
						<li class="nav-item"><a href="#">알뜰쇼핑</a></li>
						<li class="nav-item"><a href="#">이벤트</a></li>
						<li class="nav-item">						
						<form class="navbar-form navbar-right" role="search">
							<div class="form-group">
								<input type="search" class="form-control" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default">검색</button>
						</form>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		</div>

   </header>

</body>
</html>