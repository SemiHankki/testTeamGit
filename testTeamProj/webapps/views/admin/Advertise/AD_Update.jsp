<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>광고 수정</title>
<style>
<<<<<<< HEAD

    section {
        position : absolute;
        margin : 1% 18%;
        width : 65%;
        height : auto;
        padding-top: 0px;
    }

=======
>>>>>>> branch 'develop' of https://github.com/SemiHankki/testTeamGit.git
	#title {
		font-size : 30px;
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
	
<<<<<<< HEAD
	td input {width : 455px;}
	
	td {line-height : 1.5em;}

	
=======
	td {
		line-height : 1.5em;
	}
>>>>>>> branch 'develop' of https://github.com/SemiHankki/testTeamGit.git
</style>
</head>
<body>
	<%@ include file="/views/common/adminMenu.jsp" %>
<<<<<<< HEAD
	<hr>
	<section>
	
=======
	<hr />
	<br><br>
>>>>>>> branch 'develop' of https://github.com/SemiHankki/testTeamGit.git
	<div class="row">
<<<<<<< HEAD
		<div class="col-md-2"></div>
		<div class="col-md-8" id="title" style="background: white;">광고 수정</div>
=======
		<div class="col-md-7 col-md-offset-3" id="title" style="background : white">광고 수정</div>
>>>>>>> branch 'develop' of https://github.com/SemiHankki/testTeamGit.git
	</div>
	<div class="row">
<<<<<<< HEAD
		<div class="col-md-2"></div>
		<div class="col-md-8" id="content">
			<img src="<%= request.getContextPath()%>/resources/resources/images/sample_images_01.png" >
=======
		<div class="col-md-7 col-md-offset-3" id="content">
			<img src="<%=request.getContextPath()%>/resources/images/sample_images_01.png" >
>>>>>>> branch 'develop' of https://github.com/SemiHankki/testTeamGit.git
		</div>
	</div>
	<br>
	<div class="row">
<<<<<<< HEAD
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<form action="#"">
				<table style="left: 50%;">
				<br>
=======
		<div class="col-md-5 col-md-offset-4">
			<form action="AD_Manage.jsp">
				<table>
>>>>>>> branch 'develop' of https://github.com/SemiHankki/testTeamGit.git
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
<<<<<<< HEAD
				<br><br>				
			</form>
			<div class="col-md-2"></div>
				<div class="col-md-8" id="result">
					<input type="submit" class="btn btn-success btn-sm" value="수정하기"/> &nbsp;
					<input type="reset" class="btn btn-danger btn-sm" value="취소하기"/>
=======
				<br><br>
				<div id="result">
					<button type="submit" class="btn btn-success btn-md">수정하기</button> &nbsp;
					<button class="btn btn-danger btn-md">취소하기</button>
				</div>
			</form>
>>>>>>> branch 'develop' of https://github.com/SemiHankki/testTeamGit.git
		</div>
		<div class="col-md-2"></div>
		</div>
		<br>
		
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
</body>
</html>