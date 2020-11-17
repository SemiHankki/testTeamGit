<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title> 
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
             <!--  /myWeb : 나중에 JSP가 서블릿으로 바뀌면, 얘도 자동으로 바뀜 -->
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">           
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
          
<style>
.outer {
	width: 800px;
	height: auto;
	background: white;
	color: black;
	margin-left: auto;
	margin-right: auto;
	margin-top: auto;
	padding: 40px 5px;
	padding-top: 230px;
	/*border:1px solid black;*/
}

.table {
	width: 800px;
}

.tableArea {
	width: 650px;
	height: auto;
	margin-left: auto;
	margin-right: auto;
	padding: 20px 0px;
}

.searchArea {
	width: 650px;
	margin-left: auto;
	margin-right: auto;
}

#check_search {
	position: middle;
}

#table_top {
	display: inline;
}

#userTable tr td {
	text-align: center;
}

#thead {
	background: #E2E2E2;
}

/* paging */
#pagination {
	text-align: center;	
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	text-align: center;
	border: 1px solid lightgrey;
}

.pagination a.active {
	background-color: rgb(46, 143, 88);
	color: white;
}

.pagination a:hover:not (.active ) {
	background-color: #ddd;
}

.button1{
     width: 100px;
     height: 40px;
     background-color: green;
     border: none;
     color: white;
     border-radius: 5px;
}
</style>

</head>
<body>

	<%@ include file="../common/header.jsp"%>
	
    
	<!--notice table-->
	<div class="outer">
		<br>		
		<div id="table_top">
		   <h2 align="left" style="font-family: 'InfinitySans-RegularA1';">장바구니 </h2>	   
		</div>
				
		<div class="row" style="font-family: 'InfinitySans-RegularA1';">
		<div class="col-md-3"></div>
		<div class="table">
			<table class="table table-hover" id="userTable">
				<tr id="thead">
					<td>번호</td>
					<td>상품명</td>
					<td>가격</td>	
					<td>수량</td>	
					<td>보관/삭제</td>					
				</tr>
				<tr>
					<td>1</td>
					<td>[우리밀키트]갈비덮밥</td>
					<td>25,000원</td>
					<td>					   
					    <button type="button" class="btn btn-secondary">-</button>
					    <input type="text" id="product_count" value="1" disabled style="width: 30px; text-align: center;"/>
					    <button type="button" class="btn btn-secondary">+</button>			       
				   </td>
				   <td><input type="checkbox" id="keep&delete" value="">
                   </td>					
				</tr>
				<tr>
					<td>2</td>
					<td>[우리밀키트]치즈연어덮밥</td>
					<td>20,000원</td>
					<td>					   
					    <button type="button" class="btn btn-secondary">-</button>
					    <input type="text" id="product_count" value="1" disabled style="width: 30px; text-align: center;"/>
					    <button type="button" class="btn btn-secondary">+</button>			       
				   </td>
				   <td><input type="checkbox" id="keep&delete" value="">
                   </td>	
				</tr>
				
			</table>
		<!--notice table End-->
		<br>
		<div style="float: right;">
					<a href="<%=request.getContextPath()%>/views/order/orderForm.jsp"><button type="submit" class="button1">결제하기</button></a>
				</div>
		<br>		
	    <!--paging-->	
		</div>
         <div class="col-md-12" id="pagination">
		   <div class="pagination" style="text-align: center;">
            <a href="#">&laquo;</a>
            <a href="#">1</a>
            <a class="active" href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">&raquo;</a>
          </div>
        </div>
        <!--paging End-->
		
       </div>
	</div>

	
    <%@ include file="../common/footer.jsp"%>
	
</body>
</html>