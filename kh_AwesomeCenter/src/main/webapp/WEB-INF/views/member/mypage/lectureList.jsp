<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강 내역 조회</title>

<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/lectureList.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<script type="text/javascript" src="<%= ctxPath%>/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

	$(function(){
		
		var now = new Date();
		
		var year = now.getFullYear();
		
		var html="";
		
		for(var i=0; i<5; i++){
			html = "<option value='"+(year-i)+"' class='option'>"+(year-i)+"년</option>";
			$("#year").append(html);
		}
		
	});

</script>

</head>
<body>

	<div id="container_kdh">
		<div id="content_kdh">
		
			<div class="menu_kdh">
				<a href="#" class="material-icons atag">home</a>
				<a href="<%= ctxPath%>/member/mypage.to" class="atag">My문화센터</a>
				<a href="<%= ctxPath%>/member/mypage.to" class="atag">마이페이지</a>
				<a href="<%= ctxPath%>/member/lectureList.to" class="atag">수강내역 조회</a>
			</div>
			
			<div class="main_kdh lectureList_kdh">
				<h2 class="h2">수강내역조회</h2>
				
				<!-- search_kdh:s -->
				<div class="search_kdh">
					<span class="select_kdh" style="width:350px;">
						<select name="year" id="year" class="option_kdh select" title="년도 선택">
						</select>
					</span>
					<span class="select_kdh" style="width:350px;">
						<select name="term" id="term" class="option_kdh select" title="학기 선택">
							<option value="1" class="option">봄학기</option>
							<option value="2" class="option">여름학기</option>
							<option value="3" class="option">가을학기</option>
							<option value="4" class="option">겨울학기</option>
						</select>
					</span>
					
					<a href="#" class="btn_kdh btnBlack_kdh atag"><span>검색</span></a>	
				</div>
				<!-- search_kdh:e -->
				
				<!-- dataTable:s -->
				<div class="infoTable_kdh">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">수강결제일</th>
								<th scope="col">강좌정보</th>
								<th scope="col">관리점</th>
								<th scope="col">수강자명</th>
								<th scope="col">수강료</th>
								<th scope="col">결제금액</th>
								<th scope="col">접수상태</th>
								<th scope="col">결제정보</th>
								<th scope="col">수강후기</th>
							</tr>
						</thead>
						
						<tbody>
							<tr>
								<!-- <td colspan="9">
									조회된 수강내역이 없습니다.
								</td> -->
								<td>2020-01-09</td>
								<td>강좌입니다.</td>
								<td>본점(?)</td>
								<td>강동하</td>
								<td>10000</td>
								<td>10000</td>
								<td>접수중</td>
								<td>카드(?)</td>
								<td><a href="#" class="btn_kdh btnBlack_kdh atag">작성</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- dataTable:e -->
				
				<!-- notice:s -->
				<div class="noticeArea_kdh">
					<ul class="olulli">
						<li class="txtRed_kdh olulli">정기강좌 1개 수강료를 초과하여 포인트를 사용해 결제하시는 경우, 온라인에서는 전체취소만 가능하며, 부분취소를 원하시는 경우 데스크로 방문하셔야 합니다.</li>
						<li class="olulli">데스크 방문을 통해 신청한 강좌(현장등록)의 취소는 온라인에서 취소할 수 없으며 데스크에 방문해서만 가능합니다.</li>
						<li class="olulli">온라인으로 신청한 강좌만 <strong>인터넷상에서 취소 가능하며, 인터넷 접수 마감 기간 3일전까지 인터넷상에서 취소</strong> 가능합니다.
							<ul class="olulli">
								<li class="olulli">학기 개강일 이전 진행 강좌는 강좌 진행일 7일전까지 취소 가능 (<strong>1日 강좌는 개강 1일 전 환불 가능</strong>)</li>
								<li class="olulli">취소 기간 이후는 반드시 해당점으로 방문 후 취소 가능</li>
							</ul>
						</li>
						<li class="olulli"><strong>인터넷 신청 강좌의 카드결제 취소</strong>는 카드사에 따라 처리 기간이 차이가 있으며 <strong>최종 취소 승인</strong>은 인터넷 취소 시점에서 <strong>10일 경과 후 확인이 가능</strong>합니다.</li>
					</ul>
				</div>
				<!-- notice:e -->
				
			</div>
		
		</div>		
	</div>

</body>
</html>