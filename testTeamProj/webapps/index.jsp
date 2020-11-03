<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="icon" href="<%=request.getContextPath()%>/resources/img/fav-icon.png" type="image/x-icon" />
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Hankki Website</title>

        <!-- Icon css link -->
        <link href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/resources/vendors/elegant-icon/style.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/resources/vendors/themify-icon/themify-icons.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">

        <!-- Rev slider css -->
        <link href="<%=request.getContextPath()%>/resources/vendors/revolution/css/settings.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/resources/vendors/revolution/css/layers.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/resources/vendors/revolution/css/navigation.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/resources/vendors/animate-css/animate.css" rel="stylesheet">

        <!-- Extra plugin css -->
        <link href="<%=request.getContextPath()%>/resources/vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">

        <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/resources/css/responsive.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>

       <%@ include file= "views/common/header.jsp"%>
       
       
       
         <!--================광고 Area1 =================-->
        <section class="testimonials_area1 p_101">
            <div class="container">
                <div class="testimonials_slider owl-carousel" id="carousel_1">
                    <div class="item">
                        <div class="media">
                            <!--  <img class="d-flex rounded-circle" src="<%=request.getContextPath()%>/resources/img/testimonials-1.png" alt="">-->
                            <div class="media-body">
                                <!--  <img src="<%=request.getContextPath()%>/resources/img/dotted-icon.png" alt="">-->
                                <p align="center">광고1</p>
                                <h4><a href="#"></a>내용 없음</h4>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="media">
                            <!--  <img class="d-flex rounded-circle" src="<%=request.getContextPath()%>/resources/img/testimonials-1.png" alt="">-->
                            <div class="media-body">
                                <!--  <img src="<%=request.getContextPath()%>/resources/img/dotted-icon.png" alt="">-->
                                <p align="center">광고2</p>
                                <h4><a href="#"></a>내용 없음</h4>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="media">
                            <!--  <img class="d-flex rounded-circle" src="<%=request.getContextPath()%>/resources/img/testimonials-1.png" alt="">-->
                            <div class="media-body">
                                <!-- <img src="<%=request.getContextPath()%>/resources/img/dotted-icon.png" alt="">-->
                                <p align="center">광고3</p>
                                <h4><a href="#"></a>내용 없음</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End 광고 Area1 =================-->
       

        <!--================새로운 상품 Area =================-->
        <section class="latest_news_area p_102">
            <div class="container">
                <div class="b_center_title">
                    <h3>새로운 상품</h3>
                    <!--  <p>We Are A Creative Digital Agency. Focused on Growing Brands Online</p> -->
                </div>
                <div class="l_news_inner">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="l_news_item">
                                <div class="l_news_img"><a href="#"><img class="img-fluid" src="<%=request.getContextPath()%>/resources/img/salmon.PNG" alt=""></a></div>
                                <div class="l_news_content">
                                    <a href="#"><h4 align="center">[우리밀키트]깔끔 연어구이</h4></a>
                                    <p align="center">영양 만점 훈제향 연어</p>
                                    <a class="more_btn" href="#"><img class="more_btn_img" src="<%=request.getContextPath()%>/resources/img/shopping_cart.png" width="20px" height="20px"></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="l_news_item">
                                <div class="l_news_img"><a href="#"><img class="img-fluid" src="<%=request.getContextPath()%>/resources/img/steak.PNG" alt=""></a></div>
                                <div class="l_news_content">
                                    <a href="#"><h4 align="center">[우리밀키트]간편 스테이크</h4></a>
                                    <p align="center">숯불구이향 저녁 만찬</p>
                                    <a class="more_btn" href="#"><img class="more_btn_img" src="<%=request.getContextPath()%>/resources/img/shopping_cart.png" width="20px" height="20px"></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="l_news_item">
                                <div class="l_news_img"><a href="#"><img class="img-fluid" src="<%=request.getContextPath()%>/resources/img/chicken.PNG" alt=""></a></div>
                                <div class="l_news_content">
                                    <a href="#"><h4 align="center">[우리밀키트]매콤 닭요리</h4></a>
                                    <p align="center">속 편안한 양념 치킨</p>
                                    <a class="more_btn" href="#"><img class="more_btn_img" src="<%=request.getContextPath()%>/resources/img/shopping_cart.png" width="20px" height="20px"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End 새로운 상품 Area =================-->
        
         <!--================베스트 상품 Area2 =================-->
        <section class="testimonials_area2 p_103">
            <div class="container">
                <div class="testimonials_slider owl-carousel" id="carousel_2">
                    <div class="item">
                        <div class="media">
                            <img class="d-flex" src="<%=request.getContextPath()%>/resources/img/meat.jpg" width="500px" height="500px">
                            <div class="media-body">
                                <%--  <img src="<%=request.getContextPath()%>/resources/img/dotted-icon.png" alt="">--%>
                                <p>이 달의 판매량 1위</p>
                                <h4><a href="#"></a>베스트 상품</h4>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="media">
                            <img class="d-flex" src="<%=request.getContextPath()%>/resources/img/chicken2.jpg" width="500px" height="500px">
                            <div class="media-body">
                                <%--  <img src="<%=request.getContextPath()%>/resources/img/dotted-icon.png" alt="">--%>
                                <p>이 달의 판매량 2위</p>
                                <h4><a href="#"></a>베스트 상품</h4>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="media">
                             <img class="d-flex" src="<%=request.getContextPath()%>/resources/img/burger.jpg" width="500px" height="500px">
                            <div class="media-body">
                                <%-- <img src="<%=request.getContextPath()%>/resources/img/dotted-icon.png" alt="">--%>
                                <p>이 달의 판매량 3위</p>
                                <h4><a href="#"></a>베스트 상품</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!--================End 베스트 상품 Area =================-->
        
        <!--================알뜰 상품 Area =================-->

        <section class="creative_feature_area">
        
            <div class="container">
                <div class="c_feature_box">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="c_box_item">
                                <p align="center"><img alt="number" src="<%=request.getContextPath()%>/resources/img/1.png" width="70px" height="70px"></p>
                                <a href="#"><h4 align="center">식재료 담기</h4></a>
                                <p align="center">선호하는 식재료 장바구니에 담기 <br> (그린등급 식재료 구매시 할인 적용)</p>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="c_box_item">
                                <p align="center"><img alt="number" src="<%=request.getContextPath()%>/resources/img/2.png" width="70px" height="70px"></p>
                                <a href="#"><h4 align="center">최소한으로 배송하기</h4></a>
                                <p align="center">친환경 포장이 가능한 그린배송 선택하기 <br> (최소한의 포장과 배송가방 재활용) </p>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="c_box_item">
                                <p align="center"><img alt="number" src="<%=request.getContextPath()%>/resources/img/3.png" width="70px" height="70px"></p>
                                <a href="#"><h4 align="center">나도 친환경 소비자!</h4></a>
                                <p align="center">1-2주 동안 사용할 식재료를 한 번에 구매, <br>절약형 정기배송으로 남김없이 생활하기</p>
                            </div>
                        </div>
                    </div>
                </div>
               </div>
            </section>
        <!--================End 알뜰 상품 Area =================-->
        
        
        <!--================알뜰 식재료 Area =================-->
        <section>
        
        <div class="album py-5 bg-light">
          <div class="container">
          
          <div class="b_center_title">
                    <h3>알뜰 식재료</h3>               
                </div>
          
            <div class="row">
              <div class="col-md-4">
                <div class="card mb-4 shadow-sm">
                  <svg class="bd-placeholder-img card-img-top" width="10" height="10" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><img src="<%=request.getContextPath()%>/resources/img/fruits.PNG" alt=""></svg>
                  <div class="card-body">
                    <a href="#"><h5 align="center">과일류</h5></a>
                    <div class="d-flex justify-content-between align-items-center">    
                    </div>
                  </div>
                </div>
              </div>
              
              <div class="col-md-4">
                <div class="card mb-4 shadow-sm">
                  <svg class="bd-placeholder-img card-img-top" width="10" height="10" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><img src="<%=request.getContextPath()%>/resources/img/nuts.PNG" alt=""></svg>
                  <div class="card-body">
                    <a href="#"><h5 align="center">견과류</h5></a>
                    <div class="d-flex justify-content-between align-items-center">              
                    </div>
                  </div>
                </div>
              </div>
              
              <div class="col-md-4">
                <div class="card mb-4 shadow-sm">
                  <svg class="bd-placeholder-img card-img-top" width="10" height="10" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><img src="<%=request.getContextPath()%>/resources/img/vegs.PNG" alt=""></svg>
                  <div class="card-body">
                    <a href="#"><h5 align="center">채소류</h5></a>
                    <div class="d-flex justify-content-between align-items-center">
                    </div>
                  </div>
                </div>
              </div>
          
              <div class="col-md-4">
                <div class="card mb-4 shadow-sm">
                  <svg class="bd-placeholder-img card-img-top" width="10" height="10" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label=""><title>Placeholder</title><img src="<%=request.getContextPath()%>/resources/img/mushrooms.PNG" alt=""></svg>
                  <div class="card-body">
                   <a href="#"><h5 align="center">버섯류</h5></a>
                    <div class="d-flex justify-content-between align-items-center">  
                    </div>
                  </div>
                </div>
               </div>
              </div>
             </div>
            </div>       
        </section>
        <!--================알뜰 식재료 Area =================-->
        
        <%@ include file= "views/common/footer.jsp"%>


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
        <!-- Rev slider js -->
        <script src="<%=request.getContextPath()%>/resources/vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendors/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendors/revolution/js/extensions/revolution.extension.video.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendors/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <!-- Extra plugin css -->
        <script src="<%=request.getContextPath()%>/resources/vendors/counterup/jquery.waypoints.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendors/counterup/jquery.counterup.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendors/counterup/apear.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendors/counterup/countto.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendors/parallaxer/jquery.parallax-1.1.3.js"></script>
        <!--Tweets-->
        <script src="<%=request.getContextPath()%>/resources/vendors/tweet/tweetie.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendors/tweet/script.js"></script>

        <script src="<%=request.getContextPath()%>/resources/js/theme.js"></script>
        
    </body>
</html>
