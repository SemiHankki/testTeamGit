<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 관리</title>

<style>
#header {
	height: 300px;
}

.space_area {
	height: 30px;
}

.space_area2 {
	height: 70px;
}

#paging_area {
	text-align: center;
}

#admin_menu_area {
	top: 100px;
}

#admin_menu_area>table {
	width: 180px;
	border: 2px solid black;
}

.col-xs-9 {
	left: 90px;
}

.select_product_option {
	height: 63px;
	line-height: 100px;
	font-size: 16px;
}

#select_product_search {
	top: 28px;
	left: 15px;
}

#button_area{
	text-align: right;
}

.button>button{
	width: 120px;
}
</style>

</head>
<body>
	<div id="header">
		<%@ include file="/views/common/header.jsp"%>
	</div>

	<div class="row">
		<div class="container">
			<div class="col-xs-2" id="admin_menu_area">
				<table class="table table-hover" id="admin_menu">
					<tr>
						<td>회원 등급 관리</td>
					</tr>
					<tr>
						<td>상품 관리</td>
					</tr>
					<tr>
						<td>레시피 관리</td>
					</tr>
					<tr>
						<td>광고 관리</td>
					</tr>
					<tr>
						<td>이벤트 관리</td>
					</tr>
					<tr>
						<td>공지 사항 관리</td>
					</tr>
					<tr>
						<td>Q & A관리</td>
					</tr>
					<tr>
						<td>1:1 문의관리</td>
					</tr>
				</table>
			</div>


			<div class="col-xs-9" id="title_content">
				<div class="col-xs-3" id="title">
					<h2>상품 관리</h2>
				</div>
				<div class="select_product_option col-xs-2">
					<input type="checkbox" id="product_num"
						style="width: 14px; height: 14px;" /> &nbsp; <label
						for="product_num"> 상품 번호</label>
				</div>

				<div class="select_product_option col-xs-2">
					<input type="checkbox" id="product_name"
						style="width: 14px; height: 14px;" /> &nbsp; <label
						for="product_name"> 상품 이름</label>
				</div>

				<div class="col-xs-5" id="select_product_search">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Search for..."> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">Go!</button>
						</span>
					</div>
				</div>
			</div>


			<div class="col-xs-9" id="product_select_area">

				<div class="space_area col-xs-12"></div>
				<div class="col-xs-4">
					<a
						href="<%=request.getContextPath()%>/views/product/product_detail.jsp"
						class="thumbnail" target="_blank"> <img
						src="<%=request.getContextPath()%>/resources/images/sample_images_01.png" />
					</a>
					<div class="caption">
						<h3>test caption1</h3>
						<p>test comment1</p>
						<input type="checkbox" id="product_no1"
							style="width: 20px; height: 16px;" /> &nbsp; <label
							for="product_no1"> 상품 선택</label>
					</div>
				</div>
				<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img
						src="<%=request.getContextPath()%>/resources/images/sample_images_02.png" />
					</a>
					<div class="caption">
						<h3>test caption2</h3>
						<p>test comment2</p>
						<input type="checkbox" id="product_no2"
							style="width: 20px; height: 16px;" /> &nbsp; <label
							for="product_no2"> 상품 선택</label>
					</div>
				</div>
				<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img
						src="<%=request.getContextPath()%>/resources/images/sample_images_03.png" />
					</a>
					<div class="caption">
						<h3>test caption3</h3>
						<p>test comment3</p>
						<input type="checkbox" id="product_no3"
							style="width: 20px; height: 16px;" /> &nbsp; <label
							for="product_no3"> 상품 선택</label>
					</div>
				</div>

				<div class="space_area2 col-xs-12"></div>

				<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img
						src="<%=request.getContextPath()%>/resources/images/sample_images_04.png" />
					</a>
					<div class="caption">
						<h3>test caption4</h3>
						<p>test comment4</p>
						<input type="checkbox" id="product_no4"
							style="width: 20px; height: 16px;" /> &nbsp; <label
							for="product_no4"> 상품 선택</label>
					</div>
				</div>
				<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img
						src="<%=request.getContextPath()%>/resources/images/sample_images_05.png" />
					</a>
					<div class="caption">
						<h3>test caption5</h3>
						<p>test comment5</p>
						<input type="checkbox" id="product_no5"
							style="width: 20px; height: 16px;" /> &nbsp; <label
							for="product_no5"> 상품 선택</label>
					</div>
				</div>
				<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img
						src="<%=request.getContextPath()%>/resources/images/sample_images_06.png" />
					</a>
					<div class="caption">
						<h3>test caption6</h3>
						<p>test comment6</p>
						<input type="checkbox" id="product_no6"
							style="width: 20px; height: 16px;" /> &nbsp; <label
							for="product_no6"> 상품 선택</label>
					</div>
				</div>

				<div class="space_area col-xs-12"><br /></div>

				<div class="col-xs-12" id="button_area">
					<div class="button col-xs-2 col-xs-offset-6">
						<button type="button" class="btn btn-success btn-lg">등록</button>
					</div>
					<div class="button col-xs-2">
						<button type="button" class="btn btn-warning btn-lg">수정</button>
					</div>
					<div class="button col-xs-2">
						<button type="button" class="btn btn-danger btn-lg">삭제</button>
					</div>
				</div>

				<div class="space_area col-xs-12"></div>

				<div class="col-xs-9" id="paging_area">
					<nav id="paging">
						<ul class="pagination">
							<li><a href="#" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<div class="space_area col-xs-12" ></div>
	</div>
	<%@ include file="/views/common/footer.jsp"%>

</body>
</html>