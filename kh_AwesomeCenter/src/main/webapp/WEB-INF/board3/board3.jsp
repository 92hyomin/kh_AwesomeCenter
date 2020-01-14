<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="boardTbl">
	<table class="table" style="border-top: solid 2px gray; border-bottom: solid 1px gray;">
	<h4 style="font-weight: bold; margin-top: 40px;">게시판3</h4>
	
		<%-- 게시판 상단 내용 --%>
		<thead class="hm_thead">
			<tr>
				<th width="10%">NO.</th>
				<th width="20%">상품명</th>
				<th width="10%">등급</th>
				<th width="30%">리뷰내용</th>
				<th width="20%">작성일자</th>
			</tr>
		</thead>
		
		<tbody class="hm_tbody">
		<%-- 세미흔적 
		<c:if test="${empty requestScope.reviewList}">
				<tr>
					<td colspan="5">내가 쓴 리뷰가 없습니다.</td>
				</tr>
		</c:if>
		--%>
		
		<tr>
			<td>1</td>
			<td><span>게시글 제목1</span></td>
			<td>1</td>
			<td style="text-align: left;">게시판333333333333333333333333333333333333333333333333333333333333333</td>
			<td>2020.01.08</td>
		</tr>
		
		<tr>
			<td>2</td>
			<td><span>게시글 제목2</span></td>
			<td>2</td>
			<td style="text-align: left;">게시판333333333333333333333333333333333333333333333333333333333333333</td>
			<td>2020.01.08</td>
		</tr>
		
		<tr>
			<td>3</td>
			<td><span>게시글 제목3</span></td>
			<td>3</td>
			<td style="text-align: left;">게시판333333333333333333333333333333333333333333333333333333333333333</td>
			<td>2020.01.08</td>
		</tr>
		
		</tbody>
	</table>
</div>