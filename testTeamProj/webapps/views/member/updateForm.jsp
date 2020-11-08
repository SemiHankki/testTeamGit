<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정</title>
<style>

.rowarea {
  padding-top:250px;
  padding-right: 120px;
  padding-left: 120px;    
}

.column_o {
  float: left;
  width: 33.33%;
  padding: 10px;
  height: 200px;
  border: 1px, solid, black;
}

.rowarea:after {
  content: "";
  display: table;
  clear: both;
}

.button_o {
  background-color: rgb(34, 155, 112);
  border: none;
  color: white;
  padding: 0px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 0px 2px;
  cursor: pointer;
  border-radius: 12px;
  height: 30px; 
  text-align: center;
}

#button_o {margin: 0px auto;}
#button_arrow {border: none; background-color: lightgray;}


.outer{
  width:800px;
  height: 500px;
  background:white;
  color:black;
  margin-left:auto;
  margin-right:auto;
  margin-top:10px;
  padding : 40px 5px;
  padding-top: 10px;
}

.table_top {float: left; display: inline-block;}

.div0{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    
}

.div0-1{
    width: 1200px;
    display: flex;
    justify-content: center;
}

.text{ 
    text-align: center;
    margin-bottom: 10px;
    margin-top: 10px;
    width: 650px;
}

.div1{ /*개인정보 수정 영역*/
   padding: 5px 20px;
   display:flex ; 
   flex-direction: column; 
   align-items: center; 
   padding-top: 50px;
   padding-bottom: 30px;
   width: 800px;
   border-bottom: gray solid;
   border-top: gray solid;
}

.div2{ /*각 항목 한 줄*/
    display: flex;
    padding: 5px 10px;
    width: 700px;
    align-items: center;
    margin-bottom: 15px;
    justify-content: center;
}

.div2-1{ /*하..노답..진심...*/
   width: 80px;
}

input{
    width: 400px;
    height: 40px;
    padding-left: 10px;
    margin-right: 10px;
    border-radius: 5px;
    border: 1px solid grey;
}

.check1{ /*중복확인 버튼*/
    width: 110px;
    height: 30px;
    background-color: rgb(46, 143, 88);
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

#zipCode{
   width: 300px;
}

.div3-1{ /*주소 첫 줄*/ 
	width: 700px;
	display : flex;
	align-items : center;
}
     
.postsearch{ /*우편번호 찾기 버튼*/
    width : 100px;
    text-align : center;
    background-color: rgb(46, 143, 88);
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;        
}

label{ /*각 항목 이름*/
    flex: 1;
    font-size: 13pt;
}

.forgongbak{
    width: 110px;
}

button#complete{ /* 완료 버튼 */
   margin : 30px 30px;
   width: 250px;
   height: 40px;
   background-color: rgb(46, 143, 88);
   color: white;
   font-size: 15px;
   cursor: pointer;
   border: none;
   border-radius: 5px;
}

button#cancel{  /*취소 버튼*/
   margin : 30px 30px;
   width: 250px;
   height: 40px;
   background-color: rgb(248, 240, 211);
   font-size: 15px;
   cursor: pointer;
   border: none;
   border-radius: 5px;
}

/*side menu*/
div#nav-box {
    padding: 0;
    font-family: "맑은 고딕";
    font-size: 0.9em;
    width : 160px;
}

ul#navi {
    width: 160px;
    text-indent: 10px;
}

ul#navi,
ul#navi ul {
    margin: 0;
    padding: 0;
    list-style: none;
    border : 1px solid black;
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

/*left-side menu*/

#order_menu_area {
	top: 550px;
	left: 10px;
}

#order_menu_area > table{
	width: 180px;
	border: 2px solid black;
}


</style>
</head>

<body>

    <%@ include file="../common/header.jsp" %>
    
    <!-- left-side menu -->
    <div class="col-xs-1 col-xs-offset-1" id="order_menu_area">
				<table class="table table-hover" id="order_menu">
					<tr>
						<td>주문 내역</td>
					</tr>
					<tr>
						<td>상품 후기</td>
					</tr>
					<tr>
						<td>상품 문의</td>
					</tr>
					<tr>
						<td>적립금</td>
					</tr>
					<tr>
						<td>쿠폰</td>
					</tr>
					<tr>
						<td>개인정보 수정</td>
					</tr>
					<tr>
						<td>회원 탈퇴</td>
					</tr>
				</table>
			</div>
	<!-- left-side menu End -->
	
     <!-- 상단 회색 박스 -->
    <div class="container">
    <div class="rowarea">
      <div class="column_o" style="background-color:lightgray;">
      <div class="row">
      	<h3 align="center">________ 님</h3>
          <br>
          <h4 align="center">적립 0%</h4>
          <br>
      </div>
          
        <div id="button_o" class="row" style="text-align:center;">
          <button class="button_o" type="button" onclick="location.href='#' ">전체 등급 보기</button>
          <button class="button_o" type="button" onclick="location.href='#' ">다음 달 예상 등급</button>
        </div>
      </div>
      <div class="column_o" style="background-color:lightgray; border-left: 1px solid black; border-right: 1px solid black;">
           <h3 align="center">적립금</h3>
          <br>
           <h4 align="center">0 원</h4>
          <br>
           <p align="center">소멸예정 0원</p>
      </div>
      <div class="column_o" style="background-color:lightgray;">
          <br>
          <h3 align="center">쿠폰</h3>
          <br>
           <div id="button_o" class="row" style="text-align:center;">
             <button id="button_arrow" type="button" onclick="location.href='#' ">0 개 ></button>
           </div>
      </div>
    </div>
    </div>
    <!-- 상단 회색 박스 끝-->
    
    <div class="container">

<form action="/" method="post">

<div class="div0">
<br>
   <div class="text">
   <h2>개인 정보 수정</h2>
    </div>

<div class="div1">
   <div class="div2">
      <label for="id" >아이디</label>
      <input type="text" id="id">
      <div class="forgongbak"></div>
    </div>

    <div class="div2">
        <label for="pwd">현재 비밀번호</label>
        <input type="password" id="pwd" placeholder="비밀번호를 입력해주세요">
        <div class="forgongbak"></div>
    </div>

    <div class="div2">
        <label for="pwd2">새 비밀번호</label>
        <input type="password" id="pwd2" placeholder="새로운 비밀번호를 입력해주세요">
        <div class="forgongbak"></div>
    </div>
      
    <div class="div2">
        <label for="pwd2">새 비밀번호 확인 </label>
        <input type="password" id="pwd2"
        placeholder="새로운 비밀번호를 한번 더입력해주세요">
        <div class="forgongbak"></div>
    </div>
        
    <div class="div2">
        <label for="name">이름</label>
        <input type="text" id="name">
        <div class="forgongbak"></div>
    </div>

    <div class="div2">
        <label for="email">이메일</label>
         <div class="div2-1"></div>
        <input type="text" id="email" placeholder="내용을 입력해주세요.">
        <button type="submit" class="check1"> 중복확인</button>
    </div>

    <div class="div2">
        <label for="phone">휴대폰</label>
        <input type="text" id="phone" placeholder="내용을 입력해주세요.">
        <div class="forgongbak"></div>
    </div>
    
    <div class="div2" style="flex-direction : column;"> 
        <div class="div2">
            <label for="address" class="div3-2" >주소</label>
            <input type="text" id="sample6_address" placeholder="주소" >
            <input type="button" class="postsearch" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
        </div>        
        <input type="text" id="sample6_extraAddress" placeholder="참고항목"
         style=" margin-top : 5px; margin-left: 60px">
        <input type="text" id="sample6_detailAddress" placeholder="상세주소" 
        style="margin-top : 5px; margin-left: 60px; margin-bottom : 10px; ">
        
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script>
            function sample6_execDaumPostcode() {
                new daum.Postcode({
                    oncomplete: function(data) {
                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
        
                        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                        var addr = ''; // 주소 변수
                        var extraAddr = ''; // 참고항목 변수
        
                        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                            addr = data.roadAddress;
                        } else { // 사용자가 지번 주소를 선택했을 경우(J)
                            addr = data.jibunAddress;
                        }
        
                        // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                        if(data.userSelectedType === 'R'){
                            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                extraAddr += data.bname;
                            }
                            // 건물명이 있고, 공동주택일 경우 추가한다.
                            if(data.buildingName !== '' && data.apartment === 'Y'){
                                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                            }
                            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                            if(extraAddr !== ''){
                                extraAddr = ' (' + extraAddr + ')';
                            }
                            // 조합된 참고항목을 해당 필드에 넣는다.
                            document.getElementById("sample6_extraAddress").value = extraAddr;
                        
                        } else {
                            document.getElementById("sample6_extraAddress").value = '';
                        }
                        
                        document.getElementById("sample6_address").value = addr;
                        // 커서를 상세주소 필드로 이동한다.
                        document.getElementById("sample6_detailAddress").focus();
                    }
                }).open();
            }
        </script>                  
    </div>
    <div class="div2">
        <label for="birth">생년월일</label>
        <input type="date" id="birth" style="text-align: center;">        
        <div class="forgongbak"></div>
    </div>
    </div>
    <div class="forplace" style="width:160px"></div>
</div>
    <div class="div4" style="text-align: center;">
       <button type="submit" id="complete">수정 완료</button>
       <button type="button" id="cancel">취소</button>
    </div>
</form>
</div>

<br><br>
<%@ include file="../common/footer.jsp" %>
</body>
</html>