<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>

<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/main.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<div id="main">
	<div id="leftArea"> 
		<div id="leftSubArea1"> 
			<%-- <jsp:include page="mainCarousel.jsp" /> --%>
			<iframe src="mainCarousel.to" width="748px" height="300px" scrolling="no" frameborder=0></iframe>
		</div>
			
		<div id="leftSubArea2"> 
			<div id="searchBox">
				<form id="searchFrm" name="searchFrm">
					<ul>
						<li>
							<label for="storeCode" class="title">점포명</label>
							<select id="storeCode" name="storeCode">
								<option value="0">본점</option>
								<option value="1">본점1</option>
								<option value="2">본점2</option>
							</select>
							
							<label for="Semester" class="title">학기</label>
							<select id="Semester" name="Semester">
								<option value="0">겨울</option>
								<option value="1">여름</option>
							</select>
						</li>
						<li>
							<label for="tchName" class="title">강사명</label>
							<input type="text" name="tchName" id="tchName"/>
							
							<label for="registerStatus" class="title">접수상태</label>
							<select id="registerStatus" name="registerStatus">
								<option value="0">전체</option>
								<option value="1">접수전</option>
								<option value="2">접수중</option>
								<option value="3">접수마감</option>
								<option value="4">대기등록</option>
							</select>
						</li>
						<li>
							<label for="lectName" class="title">강좌명</label>
							<input type="text" name="lectName" id="lectName"/>
						</li>
						
						<li class="center">
							<a href="#" class="searchBtn hm_a"><span class="glyphicon" style="color:#ffffff;">&#xe003;</span> 강좌검색</a>
							
						</li>
					</ul>
				</form>
			</div>
		</div>
		
		<div id="leftSubArea3"> 
			<a href="#" class="recommend"></a>
		</div>
	</div>
	
	<!-- 오른쪽 배너 -->
	<div id="rightArea"> 
		<a href="#" class="recruit"></a>
	</div>
	
	<!-- 공지사항 롤링 -->
	<div id="bottomArea">
		<jsp:include page="rolling.jsp" />
	</div>
</div>
