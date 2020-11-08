<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>광고 수정</title>
<style>

    section {
        position : absolute;
        margin : 1% 18%;
        width : 65%;
        height : auto;
        padding-top: 0px;
    }

	#title {
		font-size : 25px;
		text-align: left;
	}
	
	#content img {
		width : 100%;
		height : 350px;
	}
	
	#result {
		text-align: center;
	}
	
	#content>input {
		width : 70%;
	}
	
	#content>* {
		line-height : 20px;
	}
	
	table {
       border-collapse: separate;
       border-spacing: 0 10px;
    }
	
	td input {width : 455px;}
	
	td {line-height : 1.5em;}

	
</style>
</head>
<body>
	<%@ include file="/views/common/adminMenu.jsp" %>
	<hr>
	<section>
	
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8" id="title" style="background: white;">광고 수정</div>
	</div>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8" id="content">
			<img src="<%= request.getContextPath()%>/resources/resources/images/sample_images_01.png" >
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<form action="#"">
				<table style="left: 50%;">
				<br>
					<tr>
						<td>광고 제목 : </td>
						<td><input type="text" id="AD_title" placeholder="제목을 입력해주세요." /></td>
					</tr>
					<tr>
						<td>사이트 링크 : </td>
						<td><input type="text" id="AD_link" placeholder="사이트 링크를 입력해주세요." /></td>
					</tr>
					 <tr></tr>
					<tr>
						<td>광고 설명 : </td>
						<td><textarea id="AD_content" cols="60" rows="3" style="resize: none;" placeholder="광고 설명을 입력해주세요."></textarea></td>
					</tr>
				</table>
				<br><br>				
			</form>
			<div class="col-md-2"></div>
				<div class="col-md-8" id="result">
					<input type="submit" class="btn btn-success btn-sm" value="수정하기"/> &nbsp;
					<input type="reset" class="btn btn-danger btn-sm" value="취소하기"/>
		</div>
		<div class="col-md-2"></div>
		</div>
		<br>
		
	</div>
	</section>
	<br />
	<br />
	<br />
	<br />
	<br />
</body>
</html>