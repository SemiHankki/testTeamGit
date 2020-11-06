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
        margin : 5% 27%;
        width : 65%;
        height : auto;
        padding-top: 80px;
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
</style>

<body>
	<%@ include file="/views/common/adminMenu.jsp" %>
	
	<section>
		<hr>
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
                    <img src="/Semi/resources/images/sample_images_01.png">
                    <div id="ad1_selct_box">
                        <p><input type="checkbox" id="ad1_select">&nbsp;광고 선택</p>
                    </div>
                </div>
                <br>
                <div>
				          법률이 헌법에 위반되는 여부가 재판의 전제가 된 경우에는 법원은 헌법재판소에 제청하여 그 심판에 의하여 재판한다.
				          헌법개정안은 국회가 의결한 후 30일 이내에 국민투표에 붙여 국회의원선거권자 과반수의 투표와 투표자 과반수의 찬성을 얻어야 한다.
				          제1항의 지시를 받은 당해 행정기관은 이에 응하여야 한다. 국무총리는 국회의 동의를 얻어 대통령이 임명한다.
				          국가안전보장회의의 조직·직무범위 기타 필요한 사항은 법률로 정한다.
                </div>
            </div>
        </div>
        
        <div id="ad_content2">
            <p>No.2</p>
            <div id="ad2_box">
                <div id="ad2_img_box">
                    <img src="/Semi/resources/images/sample_images_02.png">
                    <div id="ad2_selct_box">
                        <p><input type="checkbox" id="ad2_select">&nbsp;광고 선택</p>
                    </div>
                </div>
                <br>
                <div>
			                    법률이 헌법에 위반되는 여부가 재판의 전제가 된 경우에는 법원은 헌법재판소에 제청하여 그 심판에 의하여 재판한다.
			                    헌법개정안은 국회가 의결한 후 30일 이내에 국민투표에 붙여 국회의원선거권자 과반수의 투표와 투표자 과반수의 찬성을 얻어야 한다.
			                    제1항의 지시를 받은 당해 행정기관은 이에 응하여야 한다. 국무총리는 국회의 동의를 얻어 대통령이 임명한다.
			                    국가안전보장회의의 조직·직무범위 기타 필요한 사항은 법률로 정한다.
                </div>
            </div>
        </div>
        <div id="foot">
            <ul>
                <li><a href="AD_Insert.jsp" class="btn btn-success">광고 등록</a></li>
                <li><a href="AD_Update.jsp" class="btn btn-info">광고 수정</a></li>
                <li><button class="btn btn-danger">광고 삭제</button></li>
            </ul>
        </div>
        <br><br><br><br>
        <hr>
        페이징
		
    </section>

</body>
</html>