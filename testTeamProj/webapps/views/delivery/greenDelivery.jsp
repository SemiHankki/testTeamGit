<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그린 배송 안내</title>

<!-- Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon"> www.flaticon.com</a>-->

<style>

body, h3, h4, p {
   font-family: 'Noto Sans KR', sans-serif;
   }

header {
   height: 230px;
}

#imgSize > img {width: 100%; height: 90%; text-align: center;}
/*side bar*/
#aside{

position : absolute;
left : 100px;
position: fixed;

}

#aside_table{
   width: 110px;      
}

#aside > table {
   text-align: center;
}

#aside_table > tbody > tr >td{
   border-left: 2px solid black;
   border-right: 2px solid black;
}

#row1{
   border-top: 2px solid black;
}

#row3{
   border-bottom: 2px solid black;
}

#aside_table > tbody > tr > td > a{
   text-decoration: none;
   color: black;
}

#aside_table > tbody > tr > td:hover{
   background-color: rgb(248,240,211);
   color: black;
}
 
</style>
</head>
<body>
    <!-- Header -->
   <header>
      <%@ include file="../common/header.jsp"%>
   </header>
   
   <br />   
   <!-- right-side fixed bar -->
   <div class="col-xs-1 col-xs-offset-10 affix" id="aside">
      <a href="<%= request.getContextPath()%>/views/delivery/greenDelivery.jsp">
         <img src="<%= request.getContextPath()%>/resources/images/grenn_delivery.png"/>
      </a>
      
      <table class="table table-hover" id="aside_table">
      <tbody>
         <tr>
            <td id="row1">
               <a href="#">등급별 혜택</a>
            </td>
         </tr>
         <tr>
            <td id="row2">
               <a href="<%= request.getContextPath()%>/views/recipe/recipeList.jsp">레시피</a>
            </td>
         </tr>
         <tr>
            <td id="row3">
               <a href="#">베스트 후기</a>
            </td>
         </tr>
         </tbody>
      </table>
   </div>
   <!-- right-side fixed bar End-->

     <!-- Content -->
        <div class="container"  style="text-align: center;">
         <div class="row">
         <div class= col-md-1></div>
          <div class= col-md-10>
              <div id="imgSize">
                <img src="<%= request.getContextPath()%>/resources/images/deli1.png">
              </div>
              <br><br>
              <div id="imgSize">
                <img src="<%= request.getContextPath()%>/resources/images/deli2.png">
              </div>
              <br><br>
              <div id="imgSize">
                <img src="<%= request.getContextPath()%>/resources/images/deli4.png">
              </div>
              <br><br>
              <div id="imgSize">
                <img src="<%= request.getContextPath()%>/resources/images/deli5.png">
              </div>
              <br><br>
              <div id="imgSize">
                <img src="<%= request.getContextPath()%>/resources/images/deli6.png">
              </div>
              <br><br>
         </div>
         <div class= col-md-1></div>
        </div>
       </div> 
      <!-- Content End -->
   
   
      <%@ include file="../common/footer.jsp"%>
   
   
</body>
</html>