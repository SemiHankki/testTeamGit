<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 조회</title>

<style>
header {
	height: 300px;
}

#product_picture {
	min-width: 550px;
	max-width: 550px;
	min-height: 450px;
	max-height: 450px;
}

#product_count {
	width: 45px;
	text-align: center;
}

#total_price_area{
	text-align: right;
}

#button_area {
	text-align: right;
}

#button_area > button{
	width: 200px;
	margin-left: 40px;
}

#space_area{
	height: 50px;
}


#product_detail_picture_area > img{
	height: 600px;
	width: 1100px;
}

#porduct_review_cotent > ul {
	margin-left:15px;
	padding: 0;
}

#picture_space{
	height: 100px;
}

#space_area2{
	height: 30px;
}

#dropdown_area{
	text-align: right;
}

#table_area{
	text-align: center;
}

thead > tr > th{
	text-align: center;
}

.table{
 border: 1px solid black;
}

#space_area3{
	height: 10px;
}

#review_paging{
	text-align: center
}

#reivew_add_btn_area{
	text-align: right;
}

#quesion_add_btn_area{
	text-align: right;
}

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

#product_price{
	width: 122px;
}

#product_dc{
	width: 68px;
}

#original_price{
	margin-top: 12px;
}

#heart_icon{
	margin-top:20px;
	font-size: 25px;
}

#share_icon{
	margin-top: 10px;
	font-size: 25px;
}
</style>
</head>

<body>
	<header>
		<%@ include file="../common/header.jsp"%>
	</header>
	<br />
	
	<div class="col-xs-1 col-xs-offset-10 affix" id="aside">
		<a href="#">
			<img src="<%= request.getContextPath()%>/resources/images/grenn_delivery.png"/>
		</a>
		
		<div class="col-xs-12"><br /> <br /></div>
		
		<table class="table table-hover" id="aside_table">
		<tbody>
			<tr>
				<td id="row1">
					<a href="#">등급별 혜택</a>
				</td>
			</tr>
			<tr>
				<td id="row2">
					<a href="#">레시피</a>
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
	<div class="container">
		<div class="row">
			<div class="col-xs-6" id="picture_area">
				<img id="product_picture"
					src="<%=request.getContextPath()%>/resources/images/sample_images_01.png" />
			</div>
			<div class="col-xs-6">
			
				<div class="col-xs-4">
					<h3>[브랜드명]</h3>
				</div>
				<div class="col-xs-6">
					<h3>상품 명</h3>
				</div>
				<div class="col-xs-2" id="icon_space">
					<span class="glyphicon glyphicon-heart-empty" id="heart_icon"></span>
				</div>
				
				<div class="col-xs-4">
					<h4>상품 설명</h4>
				</div>
				<div class="col-xs-6">
					<h4>상품 설명 상세 내용</h4>
				</div>
				<div class="col-xs-2" >
					<a href="#" style="text-decoration: none; color:black;">
						<span class="fa fa-share-alt" id="share_icon"></span>
					</a>
				</div>
			
				<div class="col-xs-3" id="product_price">
					<h3>15000원</h3>
				</div>
				<div class="col-xs-2" style="color:red;" id="product_dc">
					<h3>50%</h3>
				</div>
				<div class="col-xs-7" style="color:grey;" id="original_price">
					<h4>30000
						<span class="glyphicon glyphicon-question-sign"></span>
					</h4>
					
				</div>
			
			
				<div class="col-xs-12">
					<hr />
				</div>

				<div class="col-xs-4">
					<h4>판매단위</h4>
				</div>
				<div class="col-xs-8">
					<h4>박스</h4>
				</div>

				<div class="col-xs-4">
					<h4>중량/용량</h4>
				</div>
				<div class="col-xs-8">
					<h4>0g X 수량</h4>
				</div>

				<div class="col-xs-4">
					<h4>배송구분</h4>
				</div>
				<div class="col-xs-8">
					<h4>그린 배송 / 택배 배송</h4>
				</div>

				<div class="col-xs-4">
					<h4>포장타입</h4>
				</div>
				<div class="col-xs-8">
					<h4>상온/종이포장</h4>
				</div>

				<div class="col-xs-4">
					<h4>알레르기 정보</h4>
				</div>
				<div class="col-xs-8">
					<h4>
						본 제품은 알류, 우유, 메밀, 땅콩, 대두,<br /> 밀을 사용한 제품과 같은 제조시설에서<br /> 제조하고
						있습니다.
					</h4>
				</div>

				<div class="col-xs-4">
					<h4>구매수량</h4>
				</div>
				<div class="col-xs-8">
					<button type="button" class="btn btn-secondary">-</button>
					<input type="text" id="product_count" value="1" disabled />
					<button type="button" class="btn btn-secondary">+</button>
				</div>
			</div>
		</div>

		<div class="col-xs-12">
			<br /> <br /> 
		</div>

		<div class="col-xs-12" id="total_price_area">
			<h3> 총 상품 금액 : 0 원 </h3>
			<h5> 로그인 후, 회원 할인가와 적립혜택 제공</h5>
			<br />
		</div>

		<div class="col-xs-12" id="button_area">
			<button type="button" class="btn btn-light btn-lg">장바구니</button>
			<button type="button" class="btn btn-success btn-lg">구매하기</button>
			<br />
		</div>
		
		<div class="col-xs-12" id="space_area1">
		</div>
	</div>
	
	<div class="container" id="container2">
		<div class="row">
			<ul class="nav nav-tabs">
  				<li role="presentation" class="active"><a href="#">상품 상세 정보</a></li>
  				<li role="presentation"><a href="#">고객후기</a></li>
  				<li role="presentation"><a href="#">상품문의</a></li>
			</ul>		
			<br />
		</div>
		
		<div class="col-xs-12" id="picture_space"><br /><br /></div>
		
		<div class="col-xs-12" id="product_detail_picture_area">
			<img src="<%=request.getContextPath()%>/resources/images/sample_images_01.png" class="img-rounded"/>
		</div>
		
		<div class="col-xs-12" id="picture_space"><br /><br /></div>
			
		<div class="col-xs-12" id="product_detail_picture_area">
			<img src="<%=request.getContextPath()%>/resources/images/sample_images_02.png" class="img-rounded"/>
		</div>

		<div class="col-xs-12" id="picture_space"><br /><br /></div>

		<div class="col-xs-12" id="product_detail_picture_area">
			<img src="<%=request.getContextPath()%>/resources/images/sample_images_03.png" class="img-rounded"/>
		</div>
		
		<div class="col-xs-12" id="picture_space"><br /><br /></div>
		
		<ul class="nav nav-tabs">
  			<li role="presentation"><a href="#">상품 상세 정보</a></li>
  			<li role="presentation" class="active"><a href="#">고객후기</a></li>
  			<li role="presentation"><a href="#">상품문의</a></li>
		</ul>		
		
		<div class="col-xs-12" id="space_area2"> <br /></div>
		
		<div class="col-xs-12">
			<p>PRODUCT REVIEW</p>
		</div>
		<div class="col-xs-10" id="porduct_review_cotent">
			<ul>
				<li>상품에 대한 리뷰를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전 동의 없이 담당 게시판으로 이동될 수 있습니다.</li>
				<li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 1:1문의에 남겨주세요.</li>
			</ul>
		</div>

		<div class="col-xs-2" id="dropdown_area">
			<div class="dropdown">
  				
  				<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="false">
    				최근 등록순
    				<span class="caret"></span>
  				</button>
  				
  				<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    				<li role="presentation"><a role="menuitem" tabindex="-1" href="#">좋아요 만은 순</a></li>
    				<li role="presentation"><a role="menuitem" tabindex="-1" href="#">조회 수 많은 순</a></li>
				</ul>
			</div>
		</div>
		
		<div class="col-xs-12" id="space_area2"><br /></div>
		
		<div class="col-xs-12" id="table_area">
			<table class="table" id="review_table">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회 수</th>
					</tr>
				</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>test1</td>
							<td>test1</td>
							<td>test-date</td>
							<td>0</td>
						</tr>
						<tr>
							<td>2</td>
							<td>test2</td>
							<td>test2</td>
							<td>test-date</td>
							<td>0</td>
						</tr>
					</tbody>
			</table>
		</div>
		
		<div class="col-xs-12" id="space_area3"></div>
		
		<div class="col-xs-12" id="reivew_add_btn_area">
			<button type="button" class="btn btn-default">후기 쓰기</button>
		</div>
		
		<div class="col-xs-12" id="review_paging">
				
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
		</div>
		
		<div class="col-xs-12" id="space_area2"><br /></div>
		
		<ul class="nav nav-tabs">
  			<li role="presentation"><a href="#">상품 상세 정보</a></li>
  			<li role="presentation"><a href="#">고객후기</a></li>
  			<li role="presentation"  class="active"><a href="#">상품문의</a></li>
		</ul>		
		
		<div class="col-xs-12" id="space_area2"> <br /></div>
		
		<div class="col-xs-12">
			<p>PRODUCT Q&A</p>
		</div>
		<div class="col-xs-12" id="porduct_review_cotent">
			<ul>
				<li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전 동의 없이 담당 게시판으로 이동될 수 있습니다.</li>
				<li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 1:1문의에 남겨주세요.</li>
			</ul>
		</div>
		
		<div class="col-xs-12" id="space_area2"><br /></div>
		
		<div class="col-xs-12" id="table_area">
			<table class="table" id="quesion_table">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회 수</th>
					</tr>
				</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>test1</td>
							<td>test1</td>
							<td>test-date</td>
							<td>0</td>
						</tr>
						<tr>
							<td>2</td>
							<td>test2</td>
							<td>test2</td>
							<td>test-date</td>
							<td>0</td>
						</tr>
					</tbody>
			</table>
		</div>
		
		<div class="col-xs-12" id="space_area3"></div>

		<div class="col-xs-12" id="quesion_add_btn_area">
				<button type="button" class="btn btn-default">문의 작성하기</button>
		</div>
		
		<div class="col-xs-12" id="review_paging">
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
		</div>
</div>

	<%@ include file="../common/footer.jsp"%>

</body>
</html>