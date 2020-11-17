<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.jsp.notice.model.vo.*"%>
<% Notice n = (Notice)request.getAttribute("notice"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 등록</title>
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
</head>
<body>
	<%@ include file="/views/common/adminMenu.jsp" %>
	
	<hr />
	<br />
	<br />
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-7 col-md-offset-3" style="font-size: 30px">
				공지사항 등록
				<hr />
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
		<form id="updateForm" action="<%= request.getContextPath() %>/nInsert.no" method="post">
			<div class="col-md-7 col-md-offset-3">
				<div style="background : #E2E2E2; height : 450px;">
					<div style="padding : 5%;">
						
						<div style="padding : 5px;">
							작성일 : <input type="date" style="width : 20%;" name="date" value="<%= n.getN_date() %>"/>
						</div>
						
						<div style="padding : 5px;">
						<input type="hidden" name="nno" value="<%= n.getN_no() %>">
							제목 : <input type="text" style="width : 94%;" value="<%= n.getN_title() %>"/>
						</div>
					    <hr />
						<div>
							글 내용<br>
							<textarea style="resize : none; width : 100%; height : 150px;" name="content" cols="60" rows="15" ><%= n.getN_content() %>></textarea>
						</div>
					</div>
					<div style="text-align : center;">
						<button class="btn btn-success btn-sm"  onclick="complete();">등록하기</button> &nbsp;
						<button class="btn btn-danger btn-sm"  onclick="deleteNotice();">취소하기</button>
					</div>
				</div>
			</div>
			<script>
					function complete(){
						$("#updateForm").attr("action","<%=request.getContextPath() %>/nUpdate.no");
						
					}
					
					function deleteNotice(){
						$("#updateForm").attr("action","<%=request.getContextPath() %>/nDelete.no");
					}
				
				</script>
			</form>
		</div>
	</div>
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

</body>
</html>