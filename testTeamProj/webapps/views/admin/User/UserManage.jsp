<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
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
	
</style>
</head>
<body>
	<%@ include file="/views/common/adminMenu.jsp" %>
	<hr />
	<br /><br />
	<div class="row" style="padding-top: 80px;">
		<div class="col-md-3"></div>
		<div class="col-md-2" style="font-size : 30px">회원 관리</div>
		<div class="col-md-5" id="search">
			<ul>
                <li><input type="checkbox">&nbsp;광고번호&nbsp;</li>
                <li><input type="checkbox">&nbsp;광고명&nbsp;</li>
                <li><input type="text" id="user_search"><input type="submit" value="검색"></li>
            </ul>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-7">
			<table class="table table-hover" id="userTable">
				<tr id="thead">
					<td>회원 번호</td>
					<td>회원 등급</td>
					<td>회원 명</td>
					<td>가입 일자</td>
					<td>상태(활동/정지)</td>
				</tr>
				<tr>
					<td>1</td>
					<td>일반</td>
					<td>홍길동</td>
					<td>2020.11.05</td>
					<td>활동중</td>
				</tr>
				<tr>
					<td>2</td>
					<td>우수</td>
					<td>홍길서</td>
					<td>2020.11.04</td>
					<td>활동중</td>
				</tr>
				<tr>
					<td>3</td>
					<td>최우수</td>
					<td>홍길남</td>
					<td>2020.11.03</td>
					<td>정지</td>
				</tr>
				<tr>
					<td>4</td>
					<td>우수</td>
					<td>홍길북</td>
					<td>2020.11.04</td>
					<td>활동중</td>
				</tr>
				<tr>
					<td>5</td>
					<td>우수</td>
					<td>홍길</td>
					<td>2020.11.01</td>
					<td>정지</td>
				</tr>
				<tr>
					<td>6</td>
					<td>일반</td>
					<td>청길동</td>
					<td>2020.11.02</td>
					<td>활동중</td>
				</tr>
				<tr>
					<td>7</td>
					<td>일반</td>
					<td>청길서</td>
					<td>2020.11.01</td>
					<td>활동중</td>
				</tr>
				<tr>
					<td>8</td>
					<td>최우수</td>
					<td>청길남</td>
					<td>2020.10.25</td>
					<td>활동중</td>
				</tr>
				<tr>
					<td>9</td>
					<td>일반</td>
					<td>청길북</td>
					<td>2020.11.05</td>
					<td>활동중</td>
				</tr>
				<tr>
					<td>10</td>
					<td>최우수</td>
					<td>김김김</td>
					<td>2020.11.01</td>
					<td>정지</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-7">
			<br /><br /><br />
			페이징
			<hr />
		</div>
	</div>
	<br><br><br><br><br><br><br>
</body>
</html>

















