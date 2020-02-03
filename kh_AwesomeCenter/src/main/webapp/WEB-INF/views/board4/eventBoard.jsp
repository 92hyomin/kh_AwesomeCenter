<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">

  #btnArea {
		float : right;
	}

  #registerBtn {
  		border : none;
    	background: white;
    	font-size: 12pt;
    	font-weight: bold;
    	padding: 6px 10px;
    	background: black;
    	color: white;
    }
	
</style>

<script type="text/javascript">

	//글 상세보기
 	function goEventDetail(event_seq){
	   var frm = document.goEventDetailFrm;
	   frm.event_seq.value = event_seq;
	   frm.method = "GET";
	   frm.action = "<%= request.getContextPath()%>/eventBoardDetail.to";
	   frm.submit(); 
	}
 

</script>

<div id="boardTbl">
	<table class="table" style="border-top: solid 2px gray; border-bottom: solid 1px gray;">
	<h4 style="font-weight: bold; margin-top: 40px;">이벤트 게시판</h4>
	
		<%-- 게시판 상단 내용 --%>
		<thead class="hm_thead">
			<tr>
				<th width="10%">NO.</th>
				<th width="10%">지점</th>
				<th width="50%">제목</th>
				<th width="20%">작성일자</th>
				<th width="10%">조회수</th>
			</tr>
		</thead>
		
		<tbody class="hm_tbody">
		
		<c:if test="${empty eventList}">
				<tr>
					<td colspan="5">진행중인 이벤트가 없습니다.</td>
				</tr>
		</c:if>
		
		<c:if test="${not empty eventList}">
			<c:forEach var="event" items="${eventList}" varStatus="status">
			<tr onclick="goEventDetail('${event.event_seq}');">
				<td>${event.event_seq}</td>
				<td>본점</td>
				<td style="text-align: left;"><span >${event.event_title}</span></td>
				<td>${event.event_date}</td>
				<td>${event.event_view}</td>
			</tr>
			</c:forEach>
		</c:if>
		
		
		</tbody>
	</table>
	
	<div align="center">${pageBarE}</div>
	
	<div id="btnArea">   	
      	<button type="button" class="btns" id="registerBtn" onclick="javascript:location.href='<%= request.getContextPath()%>/eventBoardRegister.to'">게시글 등록</button> <!-- 관리자만 보이게 -->
     </div>
	
	<form name="goEventDetailFrm">
		<input type="hidden" name="event_seq"/>
	</form>
	
	
</div>