<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 목록</title>

<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/QnAList.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<script type="text/javascript" src="<%= ctxPath%>/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

</script>

</head>
<body>

	<div id="container_kdh">
		<div id="content_kdh">
            <div class="menu_kdh">
				<a href="#" class="material-icons atag">home</a>
				<a href="<%= ctxPath%>/member/mypage.to" class="atag">My문화센터</a>
				<a href="<%= ctxPath%>/QnA/QnAList.to" class="atag">QnA</a>
			</div>
			<div class="main_kdh">
				<h2 class="h2">Q & A</h2>
				<div class="noticeArea_kdh">
					<ul class="olulli">
						<li class="olulli">고객서비스의 [자주하는 문의]에서 자주 질문하는 답변을 보실 수 있습니다.</li>
						<li class="olulli">자주하는 문의에 없는 질문은 문의를 해주시면 빠른 시일 안에 답변을 보내드리겠습니다.</li>
						<li class="olulli">답변 내용은 마이페이지의 [Q&A]에서 확인하실 수 있습니다.</li>
					</ul>
					<a href="<%= ctxPath%>/QnA/FAQList.to" class="btn_kdh btnBlack_kdh btnType01_kdh atag"><span>자주하는 문의보기</span></a>
				</div>
				<div class="infoTable_kdh mb30_kdh">
					<table class="table">
						<colgroup>
							<col style="width: 62px;">
							<col style="width: 140px;">
							<col style="width: 160px;">
							<col style="width: auto;">
							<col style="width: 160px;">
							<col style="width: 120px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">No.</th>
								<th scope="col">카테고리</th>
								<th scope="col">지점명</th>
								<th scope="col">제목</th>
								<th scope="col">접수일</th>
								<th scope="col">상태</th>
							</tr>
						</thead>
						<tbody>	
								<tr>
									<td colspan="6" class="noData_kdh">등록된 문의가 없습니다.</td>
								</tr>
						</tbody>
					</table>
				</div>				

				<div class="btnArea_kdh">
					<div class="rightArea_kdh">
						<a href="<%= ctxPath %>/QnA/QnAWrite.to" class="btn_kdh btnType02_kdh btnWhite_kdh atag"><span>문의하기</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>