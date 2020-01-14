<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대기자 조회</title>

<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/waitingList.css" />
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
				<a href="<%= ctxPath%>/member/mypage.to" class="atag">마이페이지</a>
				<a href="<%= ctxPath%>/member/waitingList.to" class="atag">대기자 조회</a>
			</div>

            <div class="main_kdh waitingList_kdh">
				<h2 class="h2">대기자 조회</h2>
				<p class="tableTxt_kdh p">기존 회원의 수강신청 취소로 접수가 가능해지면 대기순번에 따라 회원정보에 등록되어 있는 연락처로 담당자가 연락 드립니다.</p>
				<div class="infoTable_kdh">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">
									<span class="check_kdh">
										<input type="checkbox" id="allChk" class="input" title="선택"><label for="allChk">선택</label>
									</span>
								</th>
								<th scope="col" colspan="2">강좌정보</th>
								<th scope="col">관리점</th>
								<th scope="col">강사</th>
								<th scope="col">수강료</th>
								<th scope="col">수강자명</th>
								<th scope="col">대기접수일</th>
								<th scope="col">대기순번</th>
							</tr>
						</thead>
						<tbody>					
						    <tr>
						    	<td colspan="9">
						    		등록된 강좌가 없습니다.
						    	</td>
						    </tr>    
						</tbody>
						<tfoot>
							<tr>
								<td colspan="9">
									<div class="btnArea_kdh">
										<a href="#" class="btn_kdh btnType01_kdh btnWhite_kdh atag"><span>선택강좌 대기접수 취소</span></a>
									</div>
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
            </div>
        </div>
    </div>
</body>
</html>