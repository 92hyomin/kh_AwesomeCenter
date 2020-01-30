<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/lectureDetail.css" />

<script type="text/javascript">

	$(document).ready(function(){
		
	
		
	});
	
	function openIngPop() {
		
		window.open("<%=ctxPath%>/imgPopUP.to?preFileName=${preboardvo.preFileName}", "${preboardvo.preFileName}", "scrollbars=yes,width=417,height=385,top=10,left=20");
		
	}
	
	function deletePre() {
		
		var deleteWrite = new Array();
		
		deleteWrite.push( '${preboardvo.preSeq}' );
		
		var data = {"deleteWrite":deleteWrite};
		
		$.ajax({
			
			url:"<%=ctxPath%>/deletePreBoard.to",
			data:data,
			dataType:"JSON",
			success:function(json){
				
				alert(json.msg);
				
				location.href = "<%=ctxPath%>/prepareBoard.to?class_seq=${lecturevo.class_seq}";
				
			},
			
			error: function(request, status, error){
               alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
            }
			
		});
		
	}
	
	function modifyPre() {
		
		javascript:location.href="<%=ctxPath%>/editPre.to?class_seq=${lecturevo.class_seq}&preSeq=${preboardvo.preSeq}";
		
	}
	
</script>
	
<body id="lectureDetail_body">


	<div id="lectureDetailContainer">
	
		<div id = "pay_nvar" align="right" style = "margin: 40px 0;">
		   <div><i class = "fa fa-home"></i></div>
		   <div style = "border-right: 1px solid #e5e5e5; border-left: 1px solid #e5e5e5; padding : 0 12px; margin : 0;">수강신청</div>
		   <div>수강결제</div>
		</div>
		
		<span id="onApply">
			${lecturevo.class_semester}
		</span>
		<span class="ageCategory">
			${lecturevo.cate_code}강좌
		</span>
		<span id="classCategory">
			${lecturevo.cate_name}
		</span>
		
		<div id="lecDetailTitleDIV" style="width: 1200px;">
			<h1 id='lectureDetailTitle' style='display: inline-block;'>${lecturevo.class_title }</h1>
		</div>

		<div id="lectureDetailContent" style="margin-bottom: 20px;">
			&nbsp;&nbsp;&nbsp;<h2 style="word-spacing: -10px; margin-left: 120px;">수업자료</h2>
			<div id="preapareContentsTable">
				<table>
					<thead>
						<tr>
							<td style="background-color: rgb(244,244,244); width: 15%;">강사명</td>
							<td>${lecturevo.teacher_name}</td>
							<td style="background-color: rgb(244,244,244); width: 15%;">수강기간</td>
							<td>${lecturevo.class_startDate}&nbsp;~&nbsp;${lecturevo.class_endDate}</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="background-color: rgb(244,244,244); padding: 15px 0;">제목</td>
							<td colspan="3" style="padding: 15px 0; text-align: left; padding-left: 15px;">${preboardvo.preTitle}</td>
						</tr>
						
							
							
						<c:if test="${not empty preboardvo.preFileName}">
							<tr>
								<td style="background-color: rgb(244,244,244);">
									첨부파일
								</td>
								<td colspan="3" style="text-align: left; padding-left: 15px;">
								<img id="uploadImg" src="resources/files/${preboardvo.preFileName}" style="max-width: 400px; max-height: 300px; cursor: pointer;" onclick="openIngPop()" />
								</td>
							</tr>
						</c:if> 
							
						
						<tr>
							<td style="background-color: rgb(244,244,244);">내용</td>
							<td colspan="3" style="text-align: left; padding-left: 15px;">${preboardvo.preContent}</td>
						</tr>	
						<tr>
							<td style="background-color: rgb(244,244,244);">작성일자</td>
							<td colspan="3" style="text-align: left; padding-left: 15px;">${preboardvo.preWriteDate}</td>
						</tr>		
						<tr style="border: none;">
							<td colspan="3" style="border: none; text-align: left; padding-top: 40px;">
								<c:if test="${sessionScope.loginuser.userid == 'adminta' }">
									<span id="modifyWrite" onclick="modifyPre()">수정</span>
									&nbsp;
									<span id="deleteWrite" onclick="deletePre();">삭제</span>
								</c:if>
							</td>
							<td style="border: none; text-align: right; padding-top: 40px;">
								<a href='<%=ctxPath%>/prepareBoard.to?class_seq=${lecturevo.class_seq}'><span id="goToList">목록으로</span></a>
							</td> 
						</tr>		
					</tbody>
				</table>				
			</div>
			<div id="preapareCommentsTable">
				&nbsp;&nbsp;&nbsp;<h2 style="word-spacing: -10px; margin-left: 120px; text-align: left;">COMMENTS<span style="margin-left: 3px;">(${preboardvo.preCommentCount})</span></h2>
				<table>
					<tr>
						<td>임*미</td>
						<td>
							댓글내용댓글내용댓글내용
							<br/>
							2020.01.29&nbsp;&nbsp;자물쇠
						</td>
						<td>
							답글 삭제
						</td>
					</tr>
					<tr>
						<td colspan="3">임*미</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea cols="100" rows="5" placeholder="댓글을 입력해 주세요"></textarea>
						</td>
						<td>
							댓글 입력
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>	
	
	
		
</body>
