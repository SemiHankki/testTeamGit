<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.kh.jsp.question.model.vo.Question" %>
<% ArrayList<Question> list3 = (ArrayList<Question>)request.getAttribute("list3"); %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주묻는질문 목록표</title> 
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
            
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
<<<<<<< HEAD
	padding-top: 230px;
=======
>>>>>>> branch 'develop' of https://github.com/SemiHankki/testTeamGit.git
	/*border:1px solid black;*/
}

.table {
	width: auto;	
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
	text-align: center;
}

#userTable tr {
	border-bottom: 1px solid black;
	height: 40px;
	cursor: pointer;
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

div#nav-box {
		margin : 10% 10%;
        padding: 0;
        font-family: "맑은 고딕";
        font-size: 0.9em;
        width : 200px;
        position : absolute;
    }

    ul#navi {
        width: 150px;
        text-indent: 10px;
        font-family: 'InfinitySans-RegularA1';
    }

    ul#navi,
    ul#navi ul {
        margin: 0;
        padding: 0;
        list-style: none;
        border : 1px double black;
    }

    li.group div.title {
        height: 35px;
        line-height: 35px;
        background: #9ab92e;
        cursor: pointer;
    }

    ul.sub li {
        height: 35px;
        line-height: 35px;
        background: whitesmoke;;
        cursor: pointer;
    }

    ul.sub li a {
        display: block;
        width: 100%;
        height: 100%;
        text-decoration: none;
        color: #000;
    }

    ul.sub li:hover {
        background: gray;
        transition-duration: 0.5s;
    }

    ul.sub li:hover a {
        color : white;
        transition-duration: 0.5s;
    }

    li strong {
        float: right;
    }

	#t-row>td {
		text-align: center;
	}
	
	#t-row>td:nth-child(3) {
		text-align: center;
	}
	
	.hiddenRow>div {
		margin-top: 5%;
		margin-bottom: 5%;
		width : 100%;
		text-align : center;
	}
	
	#t-row:hover {
		cursor : pointer;
		background : rgb(248, 240, 211);
	}
	
	    
  @font-face {
    font-family: 'InfinitySans-RegularA1';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

  .container { font-family: 'InfinitySans-RegularA1';}
</style>

</head>
<body>

	<%@ include file="../common/header.jsp"%>
	<br><br><br><br><br><br> 
	 <!-- left-side menu -->
	 
	 <div class="container" style="display:grid; width: auto;">
	 	
     <div class="row">
	    <div id="nav-box" class="col-md-1 col-md-offset-1">
	        <ul id="navi">
	            <ul class="sub">	               
	                <li><strong>>&nbsp;</strong><a href="<%= request.getContextPath() %>/SelectList.no">공지 사항</a></li>
	                <li><strong>>&nbsp;</strong><a href="<%= request.getContextPath() %>/qSelectList.qu">자주 묻는 질문</a></li>
	                <li><strong>>&nbsp;</strong><a href="<%= request.getContextPath() %>/SelectList.qa">1:1 문의</a></li>
	            </ul>
	        </ul>
	    </div>
	</div>
	<!-- left-side menu End -->	
	
    
	<!--notice table-->
	<div class="outer" style="margin-top : 50px;">
		<br>						
		<div class="row">
		<div class="col-md-3"></div>
		
		<div id="table_top">
		   <h2 align="left">자주 묻는 질문 </h2><p>고객님께서 자주하시는 질문을 모두 모았습니다.</p>	  
		</div>
		
		<div class="table">
			<table class="table table-hover" id="userTable">
			   <thead>
				<tr id="thead">
					<th width="70px" style="text-align: center;">번호</th>
					<th width="70px" style="text-align: center;">작성자</th>
					<th width="100px" style="text-align: center;">카테고리</th>
					<th width="250px" style="text-align: center;">제목</th>			
				</tr>
			   </thead>
			   <% for(Question qu : list3) { %>
			   <tbody class="panel">
					<!------------------ 첫번째 글 ----------------------->
						
						<tr data-toggle="collapse" data-target="#demo"
							id="t-row">
							<td><%= qu.getQ_no() %></td>
							<td><%= qu.getQ_writer() %></td>
							<td><%= qu.getQ_attachment() %></td>
							<td><%= qu.getQ_title() %></td>
						</tr>
					<!----------------- 첫번째 글 클릭 시 나오는 글 ----------->
						<tr id="demo" class="collapse">
							<td colspan="10" class="hiddenRow">
								<div>
								<%= qu.getQ_content() %>
								</div>
							</td>
						</tr>
					   
			    </tbody>
			    <% } %>  
			</table>
		<!--notice table End-->
		
		<br><br>
	    </div>
			
		<!--paging-->	
		
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
        <hr>
        <!-- search condition -->
        <div id="check_search" style="text-align: center;">
			 <input type="checkbox" id="check_title" name="check_title" value="">
             <label class="lable_check" for="check_title">제목</label>
             
             <input type="checkbox" id="check_content" name="check_content" value="">
             <label class="lable_check" for="check_content">내용</label>
             
             <input type="checkbox" id="check_both" name="check_both" value="">
             <label class="lable_check" for="check_both">제목+내용</label>
             
			 <input type="search" id="keyword" placeholder="키워드를 입력하세요!"> 
			 <button type="button" onclick="search();">검색하기</button>
		</div>
		<!-- search condition End -->
       </div>
	</div>
		</div>
    <br><br>
    
    <script>  
		
		function search(){
			location.href="<%=request.getContextPath()%>/qSearch.qu?con="+$('#searchCondition').val()+"&keyword="+$('#keyword').val();
		}
	</script>
    <%@ include file="../common/footer.jsp"%>
	
</body>
</html>