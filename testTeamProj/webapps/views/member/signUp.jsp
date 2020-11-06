<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
 <style>
        .div_body_container{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            
            
        }
        .text{ 						/* 회원가입 제목 */
            text-align: center;
            margin-bottom: 10px;
            margin-top: 100px;
            width: 550px
        }
        .div1-1{ 					/* 회원가입 창 컨테이너 */
            padding: 5px 20px;
           display:flex ; 			/* 기본적으로 flex설정시 컨테이너 안에 값들은 inline속성이며
           							flex를 설정한 컨테이너 자체는 block속성으로 차곡차곡 쌓인다 */
           flex-direction: column; 	/* 컨테이너 안에 컨텐츠를 수직으로 바꾼다 */
           align-items: center; 	/* 수직으로 바뀔시 원래 가로 가운데 정렬의 역할이 세로 가운데 정렬의 역할로 바뀐다 */
           padding-top: 50px;
           padding-bottom: 50px;
           width: 600px;
           border-bottom: gray solid;
           border-top: gray solid;
        }

        .div2-1{					/* 각 입력 항목 상위 컨테이너 */
            
            display: flex;   		/* 안에 값들이 inline으로 정렬 */
                             		/* 안에 값들이 좌우 위아래 가운데 정렬 */
            padding: 5px 20px;
            width: 550px;
            align-items: center;
            
            }
            
        .div2-2{ 					/* 알림 컨테이너의 상위 컨테이너 */
            display: flex; 			/* float를 쓰면 깨진다 */
            padding: 5px 20px;
            width: 550px;
            justify-content: center;
        }

        input{
            width: 300px;
            height: 35px;
            padding-left: 10px;
            border-radius: 5px;
            border: black solid 1px;
            
        }

        label{
            flex: 1;				/* label의 컨테이너가 증가한다 1로 설정시 최대치로 증가
			                        이미 input의 width값이 정해져 있기 때문에
			                        이렇게 모습이 형성되는 것 
			                        상위에서 display : flex를 해놓아야 사용이 가능*/
        
        }

        .divcheck{ 					/* 입력 항목 아래에 알림 컨테이너 */
            width: 300px;
            height: auto;
            text-align: left;
            font-size: 10px;
            margin-left: 15px;
        }

        .overlap1-1{					/* 중복확인 */
            width: 100px;
            height: 35px;
            border: gray solid 1px;
            border-radius: 5px;
            margin-left: 10px;
        }
        .overlap1-2{					/* 중복확인 */
            width: 100px;
            height: 35px;
            border: white solid 1px;
            border-radius: 5px;
            margin-left: 10px;
            background-color: white;
        }

        /* 여기서부터 이용약관 */
        .divagree1{ 				/* 이용약관 전체 박스 */
            display: flex;
            flex-direction: column;
            align-items: center;
            border-bottom: gray solid;
            width: 650px;
            
        }
        .divagree2{ 				/* 각 이용약관 항의 상위 박스 */
            padding: 20px 5px;
            display: flex;
            justify-content:center ;
            align-items: center;
            width: 600px;
        }
        .divagree2-2{ 				/* 맨 위의 전체동의 상위 박스 */

            padding: 20px 5px;
            display: flex;
            flex-direction: column;
            justify-content:center ;
            align-items: center;
            width: 600px;

        }
        .divagree3-1{				/* 동의선택필수여부 */
            display: flex;
            width: 300px;
            align-items: center;
            flex: 1;
            font-size: 18px;
            margin-left: 150px;
        }
        .divagree3-1>img{
            margin-right: 10px;
        }
        .divagree3-3>img{
            margin-right: 10px;
        }
        .divagree3-2{ 				/* 약관보기 */

            width: 100px;
            text-align: right;
            font-size: 15px;
        }
        .divagree3-2>a{ 			/* 약관보기 링크 */
            text-decoration: none;
            color: black;
            flex: 1;
        }
        .divagree3-3{				 /* 전체동의 */
            display: flex;

            width: 300px;
            align-items: center;
            font-size: 18px;
            
        }
        .divagree3-4{ 				/* 전체동의 아래 설명 */
            margin-left: 190px;
            font-size: 10px;
        }
        .button1{
            width: 100px;
            height: 40px;
            background-color: green;
            border: none;
            color: white;
            border-radius: 5px;
        }
        .button2{
            padding: 10px 10px;
            background-color: cornsilk;
            border: none;
            width: 100px;
            height: 40px;
            border-radius: 5px;
        }

    </style>
</head>
<body>
	<header>
		<%@ include file="../common/header.jsp"%>
	</header>
<section>
<form action="/" method="post">

<div class="div_body_container">

        <div class="text">
        <h2>회원가입</h2>
        </div>

    <div class="div1-1">
            <div class="div2-1">
                <label for="id" >아이디</label>
                <input type="text" id="id"
                 placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합"
                 style="margin-right: 0;">
                <button class="overlap1-1" onclick="">중복확인</button>
            </div>
            <div class="div2-2">
            <div id=idcheck class="divcheck"></div>
            </div>

            <div class="div2-1">
                <label for="pwd">비밀번호</label>
                <input type="password" id="pwd" placeholder="비밀번호를 입력해주세요">
            	<div class="overlap1-2" ></div>
            </div>
            <div class="div2-2">
            <div id=pwdcheck class="divcheck"></div>
            </div>

            <div class="div2-1">
                <label for="pwd2">비밀번호 확인</label>
                <input type="password" id="pwd2" placeholder="비밀번호를 한번 더 입력해주세요">
            	<div class="overlap1-2"></div>
            </div>
            <div class="div2-2">
            <div id=pwdcheck2 class="divcheck"></div>    
            </div>
            
            <div class="div2-1">
                <label for="name">이름</label>
                <input type="text" id="name" placeholder="이름을 입력해주세요">
            	<div class="overlap1-2" ></div>
            </div>
            <div class="div2-2">
            <div id="namecheck" class="divcheck"></div>
            </div>

            <div class="div2-1">
                <label for="email">이메일</label>
                <input type="text" id="email"
                 placeholder="예 : cleanmeal@meal.com">
                <button class="overlap1-1" onclick="">중복확인</button>
            </div>
            <div class="div2-2">
            <div id="emailcheck" class="divcheck"></div>
            </div>

            <div class="div2-1">
                <label for="phone">휴대폰</label>
                <input type="text" id="phone" maxlength="11" placeholder="숫자만 입력해주세요">
            	<div class="overlap1-2"></div>
            </div>
            <div class="div2-2" >
            <div id="phonecheck" class="divcheck"></div>
            </div>

            <div class="div2-1" style="padding: 15px 20px ;">
            <label for="address">주소</label>
            </div>

            <div class="div2-1">
                <label for="birth">생년월일</label>
                <input type="text" id="birth" placeholder="YYYY/MM/DD" style="text-align: center; ">
                <div class="overlap1-2"></div>
            </div>
            <div class="div2-2">
            <div id="birthcheck" class="divcheck"></div>
            </div>
    </div>
    <!-- 이용약관 동의 -->
    <div class="divagree1">
        <div class="divagree2-2">

            <div class="divagree3-3">
            <img src="<%=request.getContextPath()%>/resources/images/checkbutton.png" alt="" width="40px" height="40px">
            전체동의합니다 <br>
            </div>
            <div class="divagree3-4">
            선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다
            </div>
        
        </div>
        <div class="divagree2">
            <div class="divagree3-1">
            <img src="<%=request.getContextPath()%>/resources/images/checkbutton.png" alt="" width="40px" height="40px">
            이용약관 동의(필수)
            </div>
            <div class="divagree3-2">
                <a href="#">약관보기></a>
            </div>
        </div>
        <div class="divagree2">
            <div class="divagree3-1">
            <img src="<%=request.getContextPath()%>/resources/images/checkbutton.png" alt="" width="40px" height="40px">
            개인정보처리방침 동의(필수)
            </div>
            <div class="divagree3-2">
                <a href="#">약관보기></a>
            </div>
        </div>
        <div class="divagree2">
            <div class="divagree3-1">
            <img src="<%=request.getContextPath()%>/resources/images/checkbutton.png" alt="" width="40px" height="40px">
            개인정보처리방침 동의(선택)
            </div>
            <div class="divagree3-2">
                <a href="#">약관보기></a>
            </div>
        </div>
        <div class="divagree2">
            <div class="divagree3-1">
            <img src="<%=request.getContextPath()%>/resources/images/checkbutton.png" alt="" width="40px" height="40px">
            개인정보처리방침 동의(선택)
            </div>
            <div class="divagree3-2">
                <a href="#">약관보기></a>
            </div>
        </div>
        <div class="divagree2">
            <div class="divagree3-1">
            <img src="<%=request.getContextPath()%>/resources/images/checkbutton.png" alt="" width="40px" height="40px">
            본인은 만 14세 이상입니다(필수)
        </div>
        </div>
    </div>
    <!-- 회원가입/취소 -->
    <div style="margin-top: 50px; margin-bottom: 50px;">
        <button type="submit" class="button1">회원가입</button>
        <button type="submit" class="button2">취소</button>
    </div>
</div>
</form>
</section>
	<footer>
		<%@ include file="../common/footer.jsp"%>
	</footer>
    <script>
        var userid =document.getElementById('id');
        var userpwd =document.getElementById('pwd');
        var userpwd2 =document.getElementById('pwd2');
        var username =document.getElementById('name');
        var userphone =document.getElementById('phone');
        var userbirth =document.getElementById('birth');
        var useremail =document.getElementById('email');

        var useridck =document.getElementById('idcheck');
        var userpwdck =document.getElementById('pwdcheck');
        var userpwdck2 =document.getElementById('pwdcheck2');
        var usernameck = document.getElementById('namecheck');
        var userphoneck = document.getElementById('phonecheck');
        var userbirthck =document.getElementById('birthcheck');
        var useremailck =document.getElementById('emailcheck');

        userid.addEventListener('click',function(){
            var useridv=userid.value
            let messages =[];
            if(useridv.length!=0&&(/[a-z0-9]/ig).test(useridv)&&(/[a-z]/ig).test(useridv)
            &&useridv.length>=6){
                    
                useridck.innerHTML='';

            }else{
                
                messages.push('6자 이상의 영문 혹은 영문과 숫자를 조합<br>');
                useridck.innerHTML=messages.join('');
            }
        })
        userid.addEventListener('keyup',function(){
            var useridv=userid.value
            let messages = [];
            if(useridv.match(/[a-zA-Z0-9]/)&&useridv.match(/[a-zA-Z]/)
                &&useridv.length>=6){
                    messages.push('');
                    useridck.innerHTML=messages.join('');
            }else{
                useridck.innerHTML='6자 이상의 영문 혹은 영문과 숫자를 조합<br>';
            }

        })

        userpwd.addEventListener('click',function(){
            var userpwdv = userpwd.value;
            if(userpwdv!=0&&userpwdv.match(/[a-zA-z]/)&&userpwdv.match(/[0-9]/)
            &&userpwdv.match(/[!@#$%^&*()~?]/)&&userpwdv.length>=10&&userpwdv.length<=20){
                
                userpwdck.innerText ='';

            }else{
                
                let messages = [];
                messages.push('10자 이상 입력<br>');
                messages.push('영문/숫자/특수문자(공백제외)만 허용하며, 2개 이상 조합<br>');
                userpwdck.innerHTML = messages.join(' ');
            }
        })
        userpwd.addEventListener('keyup',function(){
            var userpwdv=userpwd.value;
            if(userpwdv.match(/[a-zA-Z]/)&&userpwdv.match(/[0-9]/)  //여기서 str.match()함수를 사용하는 이유
                &&userpwdv.length>=10 && userpwdv.length<=20          // 만일 매개로 받은 값이 조건의 값을 하나라도 없다면 null을 반환
                &&userpwdv.match(/[!@#$%^&*()?_~]/)){                    // 이는 null이 false이기 때문에 결국 조건문 성립이 안됨
                let messages = [];
                messages.push('');
                userpwdck.innerHTML = messages.join(' ');

                // (/[a-z]/ig).test(userpwdv)이런식으로 사용해도 된다 test()함수는 어차피 true false를 반환하므로         

            }else{
                let messages = [];
                messages.push('10자 이상 입력<br>');
                messages.push('영문/숫자/특수문자(공백제외)만 허용하며, 2개 이상 조합<br>');
                userpwdck.innerHTML = messages.join(' ');
            }

        })

        
        userpwd2.addEventListener('change',function(){
            var userpwdv2 = userpwd2.value
            var userpwdv= userpwd.value
            if(userpwdv != userpwdv2){
                let messages = [];
                messages.push('비밀번호가 다릅니다');
                userpwdck2.innerText = messages.join(' ');
            }else{
                let messages = [];
                messages.push('');
                userpwdck2.innerText = messages.join(' ');
            }
        })
        userpwd2.addEventListener('keyup',function(){
            var userpwdv2 = userpwd2.value
            var userpwdv= userpwd.value
            if(userpwdv != userpwdv2){
                let messages = [];
                messages.push('비밀번호가 다릅니다');
                userpwdck2.innerText = messages.join(' ');
            }else{
                let messages = [];
                messages.push('');
                userpwdck2.innerText = messages.join(' ');
            }
        })
        
        username.addEventListener('keyup',function(){
            var usernamev = username.value;
            if(usernamev.length>=7){
                let messages = [];
                messages.push('정말이세요?');
                usernameck.innerHTML=messages.join('');
            }else{
                usernameck.innerHTML='';
            }
        })

        userphone.addEventListener('keyup',function(){
            this.value=this.value.replace(/[^0-9]/,'')

        })

        userbirth.addEventListener('keyup',function(){
            this.value=this.value.replace(/[^0-9]/,'');
            var userbirthv=userbirth.value;
            var  today = new Date();
            var yearnow = today.getFullYear();
            var monthnow = today.getMonth()+1;
            var datenow = today.getDate();
            if(userbirthv.substr(0,4)>=yearnow && userbirthv.substr(4,2)>=monthnow && userbirthv.substr(6,2)>datenow){
                /* substring 대신 substr사용해야함 substring(6,2)이 사용시 작은수가 시작위치로 가기 때문 */
                let messages = [];
                messages.push('미래에서 오셨군요^^');
                userbirthck.innerHTML = messages.join('');

            }else if((yearnow - userbirthv.substr(0,4))>=100 && userbirthv.length>=8){

                let messages = [];
                messages.push('정말이세요?');
                userbirthck.innerHTML = messages.join('');

            }else if((yearnow-userbirthv.substr(0,4))<=14&&userbirthv.substr(4,2)>=monthnow&&userbirthv.substr(6,2)>datenow){

                let messages = [];
                messages.push('만 14세 미만은 가입이 불가능합니다');
                userbirthck.innerHTML = messages.join('');

            }else if(userbirthv.length<8){

                let messages = [];
                messages.push('예 : 19940101');
                userbirthck.innerHTML = messages.join('');

            }else{

                userbirthck.innerHTML='';
            }

            })

        useremail.addEventListener('keyup', function(){
            var useremailv=useremail.value;
            var emailregex = /^[a-z0-9_\-.]{1,20}@[a-z0-9.-_]{1,}\.[a-z]{2,6}$/ig;
            if(emailregex.test(useremailv)){
                useremailck.innerHTML='';
            }else{

                let messages = [];
                messages.push('이메일 형식이 맞지 않습니다');
                useremailck.innerHTML = messages.join('');
            
            }

        })
       
        
    </script>

</body>
</html>