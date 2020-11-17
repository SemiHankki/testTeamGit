<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@
	page import="java.util.*, com.kh.jsp.notice.model.vo.*,
				 com.kh.jsp.common.*, com.kh.jsp.member.model.vo.*"
%>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 관리</title>
<style>
	#search>ul>li {
		display : inline-block;
		padding-top : 20px;
	}
	
	#search {
		bottom : 0;
	}
	
	#search>ul {
		float : right;
	}
	
	#userTable tr td {
		text-align : center;
	}
	
	#thead {
		background : #E2E2E2;
	}
	
	#userTable tr {
		border-bottom : 1px solid black;
		height : 40px;
		cursor : pointer;
	}
	
	#userTable tr td {
		border-right : 1px solid snow;
		border-bottom : 1px solid gray;
	}
	
	#Notice_no {
		width : 10%;
	}
	
	#Notice_writer {
		width : 10%;
	}
	
	#Notice_date {
		width : 20%;
	}
	
	.hiddenRow>div {
		margin : 3% 25%;
		width : 50%;
		text-align : left;
	}
	#foot {
		float : right;
	}
	
	#foot>li {
		display : inline-block;
		margin-left : 5px;
	}
	
</style>
</head>
<body>
	<%@ include file="/views/common/adminMenu.jsp" %>
	<hr />
	<br /><br />
	<div class="row">
		<div class="col-md-2 col-md-offset-3" style="font-size : 30px">공지사항 관리</div>
		<div class="col-md-5" id="search">
			<ul>
                <li><input type="checkbox">&nbsp;공지사항 글번호&nbsp;</li>
                <li><input type="checkbox">&nbsp;공지사항 글제목&nbsp;</li>
                <li><input type="text" id="user_search"><input type="submit" value="검색"></li>
            </ul>
		</div>
	</div>
	<div class="row">
		<div class="col-md-7 col-md-offset-3">
			<table class="table table-hover" id="userTable">
				<tr id="thead" style="cursor : default">
					<td id="Notice_no">글 번호</td>
					<td id="Notice_title">글 제목</td>
					<td id="Notice_writer">작성자</td>
					<td id="Notice_date">작성일</td>
				</tr>
				<!-- 공지사항 첫 번째  -->
				<tr>
					<td>1</td>
					<td>[그린배송안내]새로운 배송 방식으로 달라진 한끼와 함께하세요.</td>
					<td>관리자</td>
					<td>2020.10.05</td>
				</tr>
				<tr id="demo1" class="collapse">
					<td colspan="3" class="hiddenRow">
						<div>
						    남김없이 한끼의 리뉴얼로 그린배송 방식이 더욱 쉬워지고 간편해졌습니다. 자세한 내용은 아래의 링크를 확인 부탁드립니다.
						</div>
					</td>
				</tr>
				<!-- 공지사항 첫 번째  -->
				
				<!-- 공지사항 두 번째  -->
				<tr>
					<td>2</td>
					<td>[배송지연안내]추석연휴 배송 지연 알려드립니다.</td>
					<td>관리자</td>
					<td>2020.10.09</td>
				</tr>
				<tr id="demo1" class="collapse">
					<td colspan="3" class="hiddenRow">
						<div>
						   2020년 추석연휴 기간 중에 주문량이 증가해, 기존 평균 배송 시간인 1-2일에서 3-5일로 소요될 것으로 예상되며 사과의 말씀드립니다.
						</div>
					</td>
				</tr>
				
				<!-- 공지사항 두 번째  -->
				
				<!-- 공지사항 세 번째  -->
				<tr>
					<td>3</td>
					<td>[회원등급안내]회원 등급에 따라 달라진 혜택을 확인해보세요!</td>
					<td>관리자</td>
					<td>2020.11.10</td>
				</tr>
				<tr id="demo1" class="collapse">
					<td colspan="3" class="hiddenRow">
						<div>
						   남김없이 한끼 고객분들의 혜택이 더욱 풍성해졌습니다. 회원등급에 따른 이벤트 쿠폰과 배송 혜택이 더욱 많아졌으니 확인해보세요!
						</div>
					</td>
				</tr>
				<!-- 공지사항 세 번째  -->
				
				<!-- 공지사항 네 번째  -->
				<tr>
					<td>4</td>
					<td>[제휴사안내]알뜰상품과 관련한 제휴사의 변경 안내드립니다.</td>
					<td>관리자</td>
					<td>2020.11.01</td>
				</tr>
				<tr id="demo1" class="collapse">
					<td colspan="3" class="hiddenRow">
						<div>
						   남김없이 한끼의 알뜰상품 식재료 제휴사가 더욱 많아졌습니다. 식재료 회사뿐만 아니라 많은 농업인분들과 직거래가 가능해졌습니다.  
						</div>
					</td>
				</tr>
				
				<!-- 공지사항 네 번째  -->
			</table>
		</div>
	</div>
	<div class="container-fluid"  >
		<div class="row" style="text-align: center;">
			<div class="col-md-7 col-md-offset-3">
				<ul id="foot">
					<li><a href="No_Insert.jsp" class="btn btn-success btn-sm">공지사항 등록</a></li> 
					<li><a href="No_Update.jsp" class="btn btn-info btn-sm">공지사항 수정</a></li>
					<li><button class="btn btn-danger btn-sm">공지사항 삭제</button></li>
				</ul>
				<br /><br /><br />
				<hr />
				<div id="paging">
					<button><<</button>
					<button><</button>
					<button>1</button>
					<button>2</button>
					<button>3</button>
					<button>4</button>
					<button>5</button>
					<button>></button>
					<button>>></button>
				</div>
			</div>
		</div>
	</div>
	<br><br><br><br><br><br><br>
	
</body>
</html>

















