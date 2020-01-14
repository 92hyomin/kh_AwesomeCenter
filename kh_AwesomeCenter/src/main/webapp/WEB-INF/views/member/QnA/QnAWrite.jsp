<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 작성</title>

<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/QnAWrite.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<script type="text/javascript" src="<%= ctxPath%>/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

$(function(){
	
	$("#dCancel").click(function(){
		var question = confirm('취소하시겠습니까?');
		
		if(question) {
			location.replace('/awesomecenter/QnA/QnAList.to');	
		} else {
			return false;
		}
		
	});
	
});

</script>

</head>
<body>

	<div id="container_kdh">
		<div id="content_kdh">
            <div class="menu_kdh">
				<a href="#" class="material-icons atag">home</a>
				<a href="<%= ctxPath%>/member/mypage.to" class="atag">My문화센터</a>
				<a href="<%= ctxPath%>/QnA/QnAList.to" class="atag">1:1문의</a>
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

				<div class="infoTable_kdh aLeft_kdh mb30_kdh">
					<form name="detailForm" class="from">
					<table class="table">
						<colgroup>
							<col style="width: 12%;">
							<col style="width: 38%;">
							<col style="width: 12%;">
							<col style="width: 38%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="tit" class="label">제목</label></th>
								<td colspan="3"><input maxlength="70" type="text" id="tit" class="input" name="Subject" title="제목 입력" value=""></td>
							</tr>
							<tr>
								<th scope="row"><label for="cate" class="label">카테고리</label></th>
								<td>
									<span class="select_kdh">
										<select title="유형 선택" id="cate" class="select option_kdh" name="TypeCode">
											<option value="01" class="option">회원가입</option>
											<option value="02" class="option">놀-LAB</option>
											<option value="03" class="option">수강신청</option>
											<option value="04" class="option">강좌/강사</option>
											<option value="05" class="option">환불/취소</option>
											<option value="06" class="option">홈페이지</option>
											<option value="07" class="option">기타</option>		
										</select>
									</span>
								</td>
							</tr>
							<tr>
								<th scope="row">내용</th>
								<td colspan="3" class="tdcontent_kdh">
									<textarea maxlength="1000" name="content" id="dContent" class="textarea textcontent_kdh" title="내용 입력"  placeholder="*놀-LAB 문의 시 강좌상세설명의 문의처로 지점을 선택하셔야 원활한 답변을 받으실 수 있습니다." cols="30" rows="10"></textarea>
									<textarea id="initialContent" style="display: none;"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
					</form>
				</div>
				<div class="btnArea_kdh">
					<div class="leftArea_kdh">
						<a href="<%= ctxPath%>/QnA/QnAList.to" class="btnType02_kdh btn_kdh btnWhite_kdh atag"><span>목록</span></a>
					</div>
					<div class="rightArea_kdh">
								<a href="#" id="dCancel"class="btnType02_kdh btn_kdh btnBlack_kdh atag"><span>취소</span></a>
								<a href="#" id="dInsert"class="btnType02_kdh btn_kdh btnRed_kdh atag"><span>등록</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>