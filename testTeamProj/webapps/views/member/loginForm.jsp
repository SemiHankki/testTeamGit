<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
   <title>로그인</title>
   <meta charset="UTF-8">

<style>
.div0{			
display: flex;
width: 100vw;
height: 70vh;
justify-content: center;
align-items: center;


}
.loginForm {
   width : 700px;
   height : 500px;
   display: flex;
   flex-direction: column;
   justify-content: center;
    align-items: center;
  
   
}
.title{

    display: flex;


}

.div1-1 {
display: flex;
align-items: center;
justify-content : center;
width: 400px;
}

label {
flex : 1;

}

input {
width: 300px;
height : 35px;

}

.find {                 /* 아이디 찾기, 비밀번호 찾기 div */
width: 400px;
text-align: right;
}

.find>a {
text-decoration: none;
color : black;
}

.div2 {
display: flex;
justify-content : center;
align-items: center;

}

.login {
width:400px;
height : 40px;
background-color: rgb(46, 143, 88);
color : white;
border: none;
border-radius: 3.5px;
font-size: 15pt;
cursor: pointer;

}

.join {
width:400px;
height : 40px;
background-color: rgb(248, 240, 211);
border: none;
border-radius: 3.5px;
font-size: 15pt;
cursor: pointer;
}

button:hover {
background: darkgreen;
color : white;
}

</style>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<div class="div0">
<div class="loginForm">
   <div class="title">
   <h2>로그인 </h2><br>
   </div>
   <div style="text-align: center;">
      
   </div>
      <div class="div1-1">
         <label for="id">아이디</label>
         <input type="text" id="id" placeholder="아이디를 입력해주세요"/> 
      </div>
      
      <br>   
      <div class="div1-1"> 
         <label for="pw">비밀번호</label>
         <input type="text" id="pw" placeholder="비밀번호를 입력해주세요"/>
      </div>


      <br><br>
      <div class="find">
         <a href="#"> 아이디 찾기 </a> &nbsp; |  &nbsp; 
         <a href="#"> 비밀번호 찾기 </a>
      </div>
      <br><br>
      <div class=div2>
         <button type="submit" class="login">로그인</button>
      </div>
      <br>
      <div class="div2">
         <button type="submit" class="join">회원가입</button>
      </div>
</div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>