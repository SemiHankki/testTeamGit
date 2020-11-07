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

/*
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
*/

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
	/*border-bottom: 1px solid black;
	border-top: 1px solid black;
	border-left: 1px solid black;*/
}

.dropdown-menu {
	font-size: 16px;
	text-align: center;
}

.dropdown-menu > li:hover {
	background-color: rgb(248,240,211);
	color: black;
}


/*shopping cart popup*/
/* Popup container */
.popup {
  position: relative;
  display: inline-block;
  cursor: pointer;
}

/* The actual popup (appears on top) */
.popup .popuptext {
  visibility: hidden;
  width: 250px;
  height: 300px;
  background-color: #555;
  color: white;
  text-align: center;
  border-radius: 6px;
  padding: 8px 0;
  position: absolute;
  z-index: 1;
  top: auto;
  left: 50%;
  margin-left: -80px;
}

/* Popup arrow */
/*.popup .popuptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}*/

/* Toggle this class when clicking on the popup container (hide and show the popup) */
.popup .show {
  visibility: visible;
  -webkit-animation: fadeIn 1s;
  animation: fadeIn 1s
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
  from {opacity: 0;}
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
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
					<li><a href="#">회원가입</a></li>
					<li><a href="<%=request.getContextPath()%>/views/member/loginForm.jsp">로그인</a></li>
					<li><a href="<%=request.getContextPath()%>/views/order/orderList.jsp">주문배송</a></li>
					<li><a href="<%=request.getContextPath()%>/views/notice/noticeList.jsp">고객센터</a></li>
					<li><a href="<%=request.getContextPath()%>/views/shoppingCart/shopping_cart.jsp"><img src="<%=request.getContextPath()%>/resources/images/shopping_cart.png" width="20px" height="20px"></a></li>
				      <!-- <div class="popup" onclick="myFunction()"><img src="<%=request.getContextPath()%>/resources/images/shopping_cart.png" width="20px" height="20px">
                        <span class="popuptext" id="myPopup">나의 장바구니</span>
                      </div> -->
				</ul>
			</div>
		</div>
		
			 <!--  <script>
             // When the user clicks on <div>, open the popup
               function myFunction() {
                var popup = document.getElementById("myPopup");
                            popup.classList.toggle("show");
               }
             </script>-->             
		<!-- top-right menu area End-->
		
		<!-- middle menu area -->
		<div class="col-xs-12" id="nav_area"></div>
			<div class="container" id="nav_container">

				<div class="col-xs-2" id="dropdown_category">
					<a class="dropdown-toggle" data-toggle="dropdown">
					<img src="<%=request.getContextPath()%>/resources/images/three_line.png" 
					     width="20px" height="20px" style="margin-bottom: 5px; margin-right: 10px;">카테고리</a>

					<ul class="dropdown-menu" role="menu"> 
						<li>과일/채소류</li>
						<li>생선/육류</li>
						<li>간편식/밀키트</li>
						<!-- <li><a href="#">간편식/밀키트</a></li> -->
						
					</ul>
				</div>

				<script>
					$(document).ready(function() {
						$('.dropdown-toggle').mouseover(function() {
							$('.dropdown-menu').show();
						})

						$('.dropdown-toggle').mouseout(function() {
							t = setTimeout(function() {
								$('.dropdown-menu').hide();
							}, 100);

							$('.dropdown-menu').on('mouseenter', function() {
								$('.dropdown-menu').show();
								clearTimeout(t);
							}).on('mouseleave', function() {
								$('.dropdown-menu').hide();
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
