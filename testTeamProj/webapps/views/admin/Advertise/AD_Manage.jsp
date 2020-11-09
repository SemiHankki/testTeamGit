<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>광고 관리</title>
</head>

<style>
	section {
        position : absolute;
        margin : 1% 18%;
        width : 65%;
        height : auto;
<<<<<<< HEAD
        padding-top: 0px;
=======
>>>>>>> branch 'develop' of https://github.com/SemiHankki/testTeamGit.git
    }
    
    #space_area {
	height: 30px;
}
    

    #title_bar * {
        display : inline-block;
    }

    #title_bar>ul {
        float : right;
    }

    /* -----------------광고1 시작------------------ */

    #ad_content1 {
        margin-top : 20px;
    }

    #ad_content1>p {
        font-size: large;
        margin : 0;
    }

    #ad1_box {
        width : 100%;
        display : inline-block;
    }

    #ad1_box div {
        display : inline-block;
    }

    #ad1_img_box {
        width : 100%;
        height : 200px;
    }

    #ad1_img_box img {
        width : 80%;
        height : 200px;
    }

    #ad1_selct_box {
        position : absolute;
        width : 20%;
        height : 200px;
    }

    #ad1_selct_box p {
        position: relative;
        width : 100%;
        margin-top : 90px;
        text-align: center;
    }

    /* -----------------광고1 끝------------------ */

    /* -----------------광고2 시작------------------ */

    #ad_content2 {
        margin-top : 20px;
    }

    #ad_content2>p {
        font-size: large;
        margin : 0;
    }

    #ad2_box {
        width : 100%;
        display : inline-block;
    }

    #ad2_box div {
        display : inline-block;
    }

    #ad2_img_box {
        width : 100%;
        height : 200px;
    }

    #ad2_img_box img {
        width : 80%;
        height : 200px;
    }

    #ad2_selct_box {
        position : absolute;
        width : 20%;
        height : 200px;
    }

    #ad2_selct_box p {
        position: relative;
        width : 100%;
        margin-top : 90px;
        text-align: center;
    }

    /* -----------------광고2 끝------------------ */

    /* -----------------foot부분 시작------------- */

    #foot>ul {
        float : right;
    }

    #foot>ul>li {
        display : inline-block;
        margin-left : 10px;
        margin-top : 10px;
    }

    #foot>ul>li>a,
    #foot>ul>li>button {
        color : black;
        font-size : medium;
        border-radius: 8px 8px;
        cursor : pointer;
        padding : 5px;
    }

    /* -----------------foot부분 끝------------- */
    
    
#title_content, #ad_select_area{
	left: 80px;
}

#select_ad_option{
	margin-top: 33px;
}

#select_ad_search{
	margin-top: 33px;
	text-align: right;
}

#button_area{
	float: right;
	padding-right: 70px;
}

.button>button{
	width: 100px;
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


    
</style>

<body>
	<%@ include file="/views/common/adminMenu.jsp" %>
	<hr>
	
<<<<<<< HEAD
	<section>		
        <div class="col-xs-12" id="title_content">
				<div class="col-xs-2" id="title">
					<h2>광고 관리</h2>
				</div>
				    <div class="col-xs-8" id="checkbox_top">
				    <div style="float:right; padding-top: 15px;">
					<input type="checkbox" id="ad_num"
						style="width: 20px; height: 16px;" /> &nbsp; <label
						for="ad_num"> 광고 번호</label>
						
					<input type="checkbox" id="ad_name"
						style="width: 20px; height: 16px;" /> &nbsp; <label
						for="ad_name"> 광고명</label>
						
                    <input type="text" placeholder="Search" style="height: 30px; width: 200px;">
				    <button type="submit" style="height: 30px">Go!</button>			
				</div>
			   </div>
		     </div>
				

           <div class="col-xs-12" id="ad_select_area">
           
				<div class="col-xs-10" style="float: left;">
				 <h3>광고 1</h3>
					<a
						href="#"
						class="thumbnail" target="_blank"> <img
						src="<%=request.getContextPath()%>/resources/images/sample_images_01.png" style="width: auto; height: 200px;"/>
					</a>
					<div  class="col-xs-2">
					   <input type="checkbox" id="product_num" style="width: 20px; height: 16px;" /> &nbsp;
					   <label for="product_num"> 광고 선택</label>
					</div>
					<br><br>
					 <div>
=======
	<hr>
	
	<section>
        <div id="title_bar">
            <div id="title">
                <strong style="font-size: x-large;">광고 관리</strong>
            </div>
            <ul>
                <li><input type="checkbox" id="ad_no">광고번호</li>
                <li><input type="checkbox" id="ad_name">광고명</li>
                <li><input type="text" id="ad_search"><input type="submit" value="검색"></li>
            </ul>
        </div>
        <div id="ad_content1">
            <p>No.1</p>
            <div id="ad1_box">
                <div id="ad1_img_box">
                    <img src="<%=request.getContextPath()%>/resources/images/sample_images_01.png">
                    <div id="ad1_selct_box">
                        <p><input type="checkbox" id="ad1_select">&nbsp;광고 선택</p>
                    </div>
                </div>
                <br>
                <div>
>>>>>>> branch 'develop' of https://github.com/SemiHankki/testTeamGit.git
				          법률이 헌법에 위반되는 여부가 재판의 전제가 된 경우에는 법원은 헌법재판소에 제청하여 그 심판에 의하여 재판한다.
				          헌법개정안은 국회가 의결한 후 30일 이내에 국민투표에 붙여 국회의원선거권자 과반수의 투표와 투표자 과반수의 찬성을 얻어야 한다.
				          제1항의 지시를 받은 당해 행정기관은 이에 응하여야 한다. 국무총리는 국회의 동의를 얻어 대통령이 임명한다.
				          국가안전보장회의의 조직·직무범위 기타 필요한 사항은 법률로 정한다.
                     </div>
                </div>
<<<<<<< HEAD
           </div>

             <br>
             <div class="col-xs-12" id="ad_select_area">
           
				<div class="col-xs-10" style="float: left;">
				 <h3>광고 2</h3>
					<a
						href="#"
						class="thumbnail" target="_blank"> <img
						src="<%=request.getContextPath()%>/resources/images/sample_images_01.png" style="width: auto; height: 200px;"/>
					</a>
					<div  class="col-xs-2">
					   <input type="checkbox" id="product_num" style="width: 20px; height: 16px;" /> &nbsp;
					   <label for="product_num"> 광고 선택</label>
					</div>
					<br><br>
					 <div>
				          법률이 헌법에 위반되는 여부가 재판의 전제가 된 경우에는 법원은 헌법재판소에 제청하여 그 심판에 의하여 재판한다.
				          헌법개정안은 국회가 의결한 후 30일 이내에 국민투표에 붙여 국회의원선거권자 과반수의 투표와 투표자 과반수의 찬성을 얻어야 한다.
				          제1항의 지시를 받은 당해 행정기관은 이에 응하여야 한다. 국무총리는 국회의 동의를 얻어 대통령이 임명한다.
				          국가안전보장회의의 조직·직무범위 기타 필요한 사항은 법률로 정한다.
                     </div>
=======
            </div>
        </div>
        
        <div id="ad_content2">
            <p>No.2</p>
            <div id="ad2_box">
                <div id="ad2_img_box">
                    <img src="<%=request.getContextPath()%>/resources/images/sample_images_02.png">
                    <div id="ad2_selct_box">
                        <p><input type="checkbox" id="ad2_select">&nbsp;광고 선택</p>
                    </div>
>>>>>>> branch 'develop' of https://github.com/SemiHankki/testTeamGit.git
                </div>
           </div>
       
        <div class="space_area col-xs-12"><br /></div>
                
				<div class="col-xs-12" id="button_area">
				        <br>
					    <div style="float: right;">
						<button type="button" class="btn btn-success btn-lg">
						<a href="<%= request.getContextPath()%>/resources/views/admin/Advertise/AD_Insert.jsp">등록</a></button>
				
				
						<button type="button" class="btn btn-warning btn-lg">수정</button>
			
					
						<button type="button" class="btn btn-danger btn-lg">삭제</button>
						</div>
					</div>
				</div>
				
				<div class="space_area col-xs-12" style="padding-bottom:10px; padding-top:10px;"></div>

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
        <br><br><br><br>
        <hr>
<<<<<<< HEAD
		
=======
        <div class="row">
		<div class="col-md-7 col-md-offset-2" style="text-align : center">
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
>>>>>>> branch 'develop' of https://github.com/SemiHankki/testTeamGit.git
    </section>

</body>
</html>