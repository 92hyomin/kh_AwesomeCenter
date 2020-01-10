<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강증</title>

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
				<a href="<%= ctxPath%>/member/certificate.to" class="atag">수강증 조회</a>
			</div>
			
            <div class="main_kdh lectureList_kdh">
				<h2 class="h2">수강증</h2>

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

				<div class="infoTable_kdh">
					<table class="table">
						<colgroup>
							<col style="width:170px;">
							<col style="width:110px;">
							<col style="width:auto;">
							<col style="width:130px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">학기</th>
								<th scope="col">수강자</th>
								<th scope="col">강좌정보</th>
								<th scope="col">수강증 보기</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="4">
									조회된 강좌가 없습니다.
								</td>
							</tr>
							
						</tbody>
					</table>
				</div>
			</div>
        </div>
    </div>

</body>
</html>