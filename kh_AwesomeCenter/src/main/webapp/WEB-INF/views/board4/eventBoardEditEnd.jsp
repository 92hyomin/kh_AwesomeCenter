<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String ctxPath = request.getContextPath(); %> 

<script type="text/javascript">
	if(${n==1}) {
		alert("이벤트 게시글 수정이 완료되었습니다.");
		 location.href="<%= ctxPath%>/eventBoardEditEnd.to?event_seq="+eventBoardInfo.event_seq()"; 
		
	}
	else {
		alert("이벤트 게시글 수정에 실패했습니다.");
		 location.href="<%= ctxPath%>/eventBoardEditEnd.to?event_seq="+eventBoardInfo.event_seq()"; 
		
	}
</script> 


  