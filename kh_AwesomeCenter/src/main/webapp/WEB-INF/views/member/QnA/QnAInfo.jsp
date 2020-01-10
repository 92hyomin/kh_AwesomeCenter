<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/QnAWrite.css" />
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
				<a href="<%= ctxPath%>/QnA/QnAList.to" class="atag">Q&A</a>
			</div>

			<div class="main_kdh">
				<h2 class="h2">Q & A</h2>

				<div class="noticeArea_kdh">
					<ul class="olulli">
						<li class="olulli">고객서비스의 [자주하는 문의]에서 자주 질문하는 답변을 보실 수 있습니다.</li>
						<li class="olulli">자주하는 문의에 없는 질문은 1:1 문의를 해주시면 빠른 시일 안에 답변을 보내드리겠습니다.</li>
						<li class="olulli">답변 내용은 마이페이지의 [1:1 문의]에서 확인하실 수 있습니다.</li>
					</ul>
					<a href="<%= ctxPath%>/QnA/FAQList.to" class="btn_kdh btnBlack_kdh btnType01_kdh atag"><span>자주하는 문의보기</span></a>
				</div>

				<form name="detailForm" class="form">
				<div class="infoTable_kdh aLeft_kdh mb30_kdh">
					<table>
						<colgroup>
							<col style="width: 12%;">
							<col style="width: 38%;">
							<col style="width: 12%;">
							<col style="width: 38%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">제목</th>
								<td colspan="3">테스트제목</td>
							</tr>
							<tr>
								<th scope="row">카테고리</th>
								<td>회원가입</td>
							</tr>
							<tr>
								<th scope="row">내용</th>
								<td colspan="3" class="tdcontent_kdh">
									<div>
									테스트내용
									</div>
								</td>
							</tr>
							
						</tbody>
					</table>
				</div>
				</form>
				<div class="btnArea_kdh">
					<div class="leftArea_kdh">
						<a href="<%= ctxPath%>/QnA/QnAList.to" class="btn_kdh btnType02_kdh btnWhite_kdh atag"><span>목록</span></a>
					</div>
					<div class="rightArea_kdh">
						<a href="<%= ctxPath%>/QnA/editForm.do" id="dUpdate" class="btn_kdh btnType02_kdh btnBlack_kdh atag"><span>수정</span></a>
						<a href="#" id="dDelete" class="btn_kdh btnType02_kdh btnRed_kdh atag"><span>삭제</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>