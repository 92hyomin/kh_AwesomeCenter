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
    
    .NoticeStyle{
		cursor: pointer;
		text-decoration: underline;
	}
	
	#noticeHovertitle:hover{
		background-color: #f9f9f9;
		
	}
	
</style>

<script type="text/javascript">

	$(document).ready(function(){
		
		$(".not_title").bind("mouseover", function(event){
			var $target = $(event.target);
			$target.addClass("NoticeStyle");
		});
		
		$(".not_title").bind("mouseout", function(event){
			var $target = $(event.target);
			$target.removeClass("NoticeStyle");
		});
	});
 
 

</script>

<div id="boardTbl">
	<table class="table" style="border-top: solid 2px gray; border-bottom: solid 1px gray;">
	<h4 style="font-weight: bold; margin-top: 40px;">게시판3</h4>
	
		<%-- 게시판 상단 내용 --%>
		<thead class="hm_thead">
			<tr>
				<th width="10%">NO.</th>
				<th width="20%">점포</th>
				<th width="40%">제목</th>
				<th width="30%">작성일자</th>
			</tr>
		</thead>
		
		<tbody class="hm_tbody">
		
		<c:forEach var="boardvo" items="${boardList}" varStatus="status">
			<tr id="noticeHovertitle">
				<td align="center">${boardvo.not_seq}</td>
				<td align="center">본점</td>
				<td align="center">
				
				<span class="not_title" onclick="goView('${boardvo.not_seq}');">${boardvo.not_title}</span>
				
				</td>
				<td align="center">${boardvo.not_regDate}</td>
				
		    </tr>
		</c:forEach>
		
		</tbody>
	</table>
	
	<div align="center" style="">
		${pageBar}
	</div>	
	
	<div id="btnArea">   	
      	<button type="button" class="btns" id="registerBtn" onclick="goRegister();">게시글 등록</button> <!-- 관리자만 보이게 -->
     </div>
	
	<form name="goDetailFrm">
		<input type="hidden" name=""/>
	</form>
</div>