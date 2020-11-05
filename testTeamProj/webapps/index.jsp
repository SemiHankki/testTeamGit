<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>남김 없이 한끼</title>

<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">           
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">

<style>

@font-face {
font-family:NanumSquare_acB;
/*src: url(./images/NanumGothic.eot);*/
src: local("나눔 스퀘어"), url(resorces/fonts/NanumSquare_acB.ttf) format("ttf");
}

p, h {
	font-family: NanumDothic-Bold;
	}

header {
	height: 300px;
}

#advertisement {
	height: 460px;
}

#carousel-inner1>.item>img {
	min-width: 100%;
	min-height: 400px;
	max-width: 100%;
	max-height: 400px;
}

#carousel-inner2>.item>img {
	min-width: 100%;
	min-height: 650px;
	max-width: 100%;
	max-height: 650px;
}

#new_p {
    font-size: 40px;
    text-align: center;
}

#s_button {
     display: block; margin: 0px auto; 
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
			<div class="carousel-inner" role="listbox" id="carousel-inner1">
				<div class="item active">
					<img src="<%=request.getContextPath()%>/resources/images/ad_1.png">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="<%=request.getContextPath()%>/resources/images/ad_3.png">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="<%=request.getContextPath()%>/resources/images/ad_4.png">
					<div class="carousel-caption"></div>
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
	
	
	<!-- New Products -->
	<div class="container">
		<div class="row">
		   <div>
		      <p id="new_p">새로운 상품</p>
		   </div>
			<div class="col-sm-6 col-md-4">
				<a href="#" class="thumbnail"> <img src="<%=request.getContextPath()%>/resources/images/salmon.PNG" />
				</a>
				<div class="caption">
					<h3 align="center">[우리밀키트]깔끔 연어구이</h3>
					<h4 align="center">영양 만점 훈제향 연어</h4>
					<a href="#"><img id="s_button" src="<%=request.getContextPath()%>/resources/images/shopping_cart.png" width="20px" height="20px"></a>
				</div>
			</div>
			<div class="col-sm-6 col-md-4">
				<a href="#" class="thumbnail"> <img src="<%=request.getContextPath()%>/resources/images/steak.PNG" />
				</a>
				<div class="caption">
					<h3 align="center">[우리밀키트]간편 스테이크</h3>
					<h4 align="center">숯불구이향 저녁 만찬</h4>
					<a href="#"><img id="s_button" src="<%=request.getContextPath()%>/resources/images/shopping_cart.png" width="20px" height="20px"></a>
				</div>
			</div>
			<div class="col-sm-6 col-md-4">
				<a href="#" class="thumbnail"> <img src="<%=request.getContextPath()%>/resources/images/chicken.PNG" />
				</a>
				<div class="caption">
					<h3 align="center">[우리밀키트]매콤 닭요리</h3>
					<h4 align="center">속 편안한 양념 치킨</h4>
					<a href="#"><img id="s_button" src="<%=request.getContextPath()%>/resources/images/shopping_cart.png" width="20px" height="20px"></a>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<br /><br /><br /><br /><br />
	</div>	
	
	
	<!-- Best Seller -->
		<div class="container" id="bestSeller">
		<div id="carousel-example-generic2" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" id="carousel-inner2" role="listbox">
				<div class="item active">
					<img src="<%=request.getContextPath()%>/resources/images/meat.jpg">
					<div class="carousel-caption">
					   <p>이 달의 판매량 1위</p>
                       <h4><a href="#"></a>베스트 상품</h4>
					</div>
				</div>
				<div class="item">
					<img src="<%=request.getContextPath()%>/resources/images/chicken2.jpg">
					<div class="carousel-caption">
					   <p>이 달의 판매량 2위</p>
                       <h4><a href="#"></a>베스트 상품</h4>
					</div>
				</div>
				<div class="item">
					<img src="<%=request.getContextPath()%>/resources/images/burger.jpg">
					<div class="carousel-caption">
					  <p>이 달의 판매량 3위</p>
                      <h4><a href="#"></a>베스트 상품</h4>
					</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic2"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">이전</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic2"
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
		<br /><br /><br /><br /><br />
	</div>	
	
	    <!-- Three steps -->
	    <div class="container">
                <div class="c_feature_box">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="c_box_item">
                                <p align="center"><img alt="number" src="<%=request.getContextPath()%>/resources/images/1.png" width="70px" height="70px"></p>
                                <a href="#"><h4 align="center">식재료 담기</h4></a>
                                <p align="center">선호하는 식재료 장바구니에 담기 <br> (그린등급 식재료 구매시 할인 적용)</p>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="c_box_item">
                                <p align="center"><img alt="number" src="<%=request.getContextPath()%>/resources/images/2.png" width="70px" height="70px"></p>
                                <a href="#"><h4 align="center">최소한으로 배송하기</h4></a>
                                <p align="center">친환경 포장이 가능한 그린배송 선택하기 <br> (최소한의 포장과 배송가방 재활용) </p>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="c_box_item">
                                <p align="center"><img alt="number" src="<%=request.getContextPath()%>/resources/images/3.png" width="70px" height="70px"></p>
                                <a href="#"><h4 align="center">나도 친환경 소비자!</h4></a>
                                <p align="center">1-2주 동안 사용할 식재료를 한 번에 구매, <br>절약형 정기배송으로 남김없이 생활하기</p>
                            </div>
                        </div>
                    </div>
                </div>
               </div>
	   
	
	<div class="container">
		<br /><br /><br /><br /><br />
	</div>	
	
	
	<!-- four pictures -->
	<div class="container">
	  <div>
          <p id="new_p">알뜰 식재료</p>               
      </div>
		<div class="row">
			<div class="col-sm-5 col-md-3">
				<a href="#" class="thumbnail"> <img src="<%=request.getContextPath()%>/resources/images/fruits.PNG" />
				</a>
				<div class="caption">
					<a href="#"><h3 align="center">과일류</h3></a>
				</div>
			</div>
			<div class="col-sm-5 col-md-3">
				<a href="#" class="thumbnail"> <img src="<%=request.getContextPath()%>/resources/images/nuts.PNG" />
				</a>
				<div class="caption">
					<a href="#"><h3 align="center">견과류</h3></a>
				</div>
			</div>
			<div class="col-sm-5 col-md-3">
				<a href="#" class="thumbnail"> <img src="<%=request.getContextPath()%>/resources/images/vegs.PNG" />
				</a>
				<div class="caption">
					<a href="#"><h3 align="center">채소류</h3></a>
				</div>
			</div>
			<div class="col-sm-5 col-md-3">
				<a href="#" class="thumbnail"> <img src="<%=request.getContextPath()%>/resources/images/mushrooms.PNG" />
				</a>
				<div class="caption">
					<a href="#"><h3 align="center">버섯류</h3></a>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<br /><br /><br /><br /><br />
	</div>	
	
	<footer>
		<%@ include file="views/common/footer.jsp"%>
	</footer>
</body>
</html>