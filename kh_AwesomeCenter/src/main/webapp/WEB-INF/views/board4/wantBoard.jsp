<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String ctxPath = request.getContextPath(); %>
<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/wantBoard.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	/* $(".title").click(function(){
		goDetail();
	}); */
});

//글 상세보기
function goDetail(no){
	location.href="<%= request.getContextPath()%>/wishBoardDetail.to?no="+no;
}

function goRegister(){
	location.href="<%= request.getContextPath()%>/writewish.to";
}


</script>

<div id="boardTbl">
	<table class="table" style="border-top: solid 2px gray; border-bottom: solid 1px gray;">
	<h4 style="font-weight: bold; margin-top: 40px;">게시판3</h4>
	
		<%-- 게시판 상단 내용 --%>
		<thead class="hm_thead">
			<tr>
				<th width="10%">NO.</th>
				<th width="10%">희망점포</th>
				<th width="20%">희망강좌명</th>
				<th width="10%">작성자</th>
				<th width="10%">작성일자</th>
				<th width="10%">조회수</th>
			</tr>
		</thead>
		
		<tbody class="hm_tbody">	
		<c:forEach var="boardvo" items="${boardList}" varStatus="status">	
			<tr>
				<td>${boardvo.no}</td>
				<td>본점</td>
				<td><span class="title" onclick="goDetail('${boardvo.no}');">${boardvo.title}</span></td>
				<td>${boardvo.username}</td>
				<td>${boardvo.writeday}</td>
				<td>${boardvo.viewcount}</td>
			</tr>
			
		</c:forEach>
		
		</tbody>
	</table>
	
	<div align="center" style="">
		${pageBar}
	</div>
	
	<div id="btnArea">   	
      	<button type="button" class="btns" id="registerBtn" onclick="goRegister();">게시글 등록</button>
     </div>
	
	<form name="goDetailFrm">
		<input type="hidden" name=""/>
	</form>
	
	
</div>