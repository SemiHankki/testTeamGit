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
	
	.dropbtn {
	  background-color: white;
	  color: black;
	  width : 100px;
	  text-align : center;
	  cursor: pointer;
	}
	.dropbtn:hover, .dropbtn:focus {
	  background-color: #E2E2E2;
	}
	
	.dropdown {
	  position: relative;
	  display: inline-block;
	}
	
	/* Dropdown Content (Hidden by Default) */
	.dropdown-content {
	  display: none;
	  position: absolute;
	  background-color: #f1f1f1;
	  width : 100px;
	  margin-left : 60px;
	  padding-top : 10px;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	}
	
	/* Links inside the dropdown */
	.dropdown-content p {
	  color: black;
	  text-align : center;
	  display: block;
	}
		
	
</style>
</head>
<body>
	<%@ include file="/views/common/adminMenu.jsp" %>
	<hr />
	<br /><br />
	<div class="row">
		<div class="col-md-2 col-md-offset-3" style="font-size : 30px"><b>회원 관리</b></div>
		<div class="col-md-5" id="search">
			<ul>
                <li><input type="checkbox">&nbsp;광고번호&nbsp;</li>
                <li><input type="checkbox">&nbsp;광고명&nbsp;</li>
                <li><input type="text" id="user_search"><input type="submit" value="검색"></li>
            </ul>
		</div>
	</div>
	<div class="row">
		<div class="col-md-7 col-md-offset-3">
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
					<td><button onclick="grade()" class="dropbtn">BEGIN</button>
						<div id="grade_down" class="dropdown-content">
							<p>BEGIN</p>
							<p>SILVER</p>
							<p>GOLD</p>
							<p>VIP</p>
						</div>
					</td>
					<td>홍길동</td>
					<td>2020.11.05</td>
					<td><button onclick="state()" class="dropbtn">활동중</button>
						<div id="state_down" class="dropdown-content">
							<p>활동중</p>
							<p>정지</p>
						</div></td>
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
		<div class="col-md-7 col-md-offset-3" style="text-align : center">
			<button><<</button>
			<button><</button>
			<button>1</button>
			<button>2</button>
			<button>3</button>
			<button>4</button>
			<button>5</button>
			<button>></button>
			<button>>></button>
			<hr />
		</div>
	</div>
	<br><br><br><br><br><br><br>
	
	<!-- 회원등급 드롭다운 시작 -->
	<script>
		function grade() {
		  document.getElementById("grade_down").classList.toggle("show");
		}
	
		window.onclick = function(event) {
		  if (!event.target.matches('.dropbtn')) {
		    var dropdowns = document.getElementsByClassName("dropdown-content");
		    var i;
		    for (i = 0; i < dropdowns.length; i++) {
		      var openDropdown = dropdowns[i];
		      if (openDropdown.classList.contains('show')) {
		        openDropdown.classList.remove('show');
		      }
		    }
		  }
		}
	</script>
	<!-- 회원 등급 드롭다운 끝 -->
	
	<!-- 회원 상태 드롭다운 시작 -->
	<script>
		function state() {
		  document.getElementById("state_down").classList.toggle("show");
		}
	
		window.onclick = function(event) {
		  if (!event.target.matches('.dropbtn')) {
		    var dropdowns = document.getElementsByClassName("dropdown-content");
		    var i;
		    for (i = 0; i < dropdowns.length; i++) {
		      var openDropdown = dropdowns[i];
		      if (openDropdown.classList.contains('show')) {
		        openDropdown.classList.remove('show');
		      }
		    }
		  }
		}
	</script>
	<!-- 회원 상태 드롭다운 끝 -->
	
</body>
</html>

















