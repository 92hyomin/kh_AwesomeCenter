<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사 리스트</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<style type="text/css">

@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

   #admin_body {
      font-family: "Noto Sans Kr", Nanum Gothic, "나눔고딕", sans-serif;
      
   }
   
   #admin_h2 h2 {
   
      font-weight: 500;
      font-size: 52px;
      margin-top: 50px;
      margin-bottom: 20px;
      letter-spacing: -3px;
      font-family: "Noto Sans Kr";
      
   
   }
   
    #admin_nvar div {    
      display: inline-block;
      font-size: 14px;
      margin: 2px 12px 0;
      color : #666;
      font-weight: 400;
   }
 
   
   #container {
   		width:95%;
   		margin: 0 auto;
   		font-size: 10pt;
   }
   
   #main_container{
   		width : 90%;
   		margin: 0 auto;
   }
   
   #admin_div {
   		margin : 60px 60px 100px 60px;
   }
   
   #admin_divOption {
   		margin: 7px 3px 7px 0;
   }
   
   .a_categorySelect {
   		height: 25px;
   		margin: 3px 3px 3px 0;
   }
   
   #searchName {
   		margin: 0 5px;
   		width: 190px;
   }
   
   #searchNameBtn {
   		background : #f8f2ec;
   		font-size: 9pt;
   		padding: 6px 10px;
   		margin-bottom: 3px;
   }
   
   #teacherListTbl {
   	  border-top: solid 1px #5e4121;
   	  border-bottom: solid 1px #5e4121;
   }
   
   #teacherListTbl th {
   		height : 45px;
   		background-color: #ebd9c6;
   		vertical-align: middle;
   		text-align: center;
   			
   }
   
   #teacherListTbl td { 		
   		vertical-align: middle;
   		text-align: center;
   			
   }
  
  .adminBtn {
  	font-size: 10pt;
  	background-color: #661a00;
  	color : white;
  	padding: 3px 6px;
  	margin: 3px;
  }
   
  
</style>

<script type="text/javascript">

	// 강사 이름 검색하기
	function goSearch(){	
		
	//	var searchName = $("#a_classCategory2 optin:selected").val();
	//	console.log(searchName);		
		
		var frm = document.searchFrm;
		frm.method = "GET";
		frm.action = "<%= request.getContextPath()%>/teacherListAdmin.to";
		frm.submit();
	}
	


</script>

</head>
<body id="admin_body">
	<div id="container">
		<div id = "admin_nvar" align="right" style = "margin: 40px 140px 0 0;">   
	         <div style = "border-right: 1px solid #e5e5e5; padding : 0 12px; margin : 0;" ><i class="fa fa-lock" style="font-size:15px; padding:2px 6px 0 0;"></i>관리자 전용 메뉴</div>
	         <div>강사 명단</div>
      	</div>
      	
		<div align="center" id="admin_h2">
			<h2>강사 명단</h2>
		</div>

		<div id="main_container">
	
		<div id="admin_div">
			
			<div id="admin_divOption">
			<form name="searchFrm">
				<select class="a_categorySelect" name="searchCode" id="a_classCategory1">
						<option value="">1차 카테고리</option>
						<option value="adult">성인</option>
						<option value="child">아동</option>
				</select>
				<select class="a_categorySelect" name="searchName" id="a_classCategory2">
						<option value="">2차 카테고리</option>
						<option value="1">건강/댄스</option>
						<option value="2">아트/플라워</option>
						<option value="3">음악/아트</option>
						<option value="4">쿠킹/레시피</option>
						<option value="5">출산/육아</option>
						<option value="6">어학/교양</option>
						<option value="7">창의/체험</option>
						<option value="8">음악/미술/건강</option>	
						<option value="9">교육/오감발달</option>		
				</select>
				<input type="text" name="searchText" id="searchText"/>
				<button type="button" id="searchNameBtn" class="btn" onclick="goSearch();">검색</button>
				</form>
			</div> <!-- admin_divOption -->	
		
		<div id="admin_divTbl">
		 <table class="table table-condensed" id="teacherListTbl">
		 	 <thead>
			      <tr>
			        <th>강사 코드</th>
			        <th>강사명</th>
			        <th>카테고리1</th>
			        <th>카테고리2</th>
			        <th>성별</th>
			        <th>입사일자</th>
			        <th>고용상태</th>
			        <th></th>
			      </tr>
			  </thead>
			  <tbody>
			  	<c:forEach var="teachervo" items="${teacherList}" varStatus="status">
			      <tr>
			        <td>${teachervo.teacher_seq}</td>
			        <td>${teachervo.teacher_name}</td>
			        <td>${teachervo.cate_code}</td>
			        <td>${teachervo.cate_name}</td>
			        <td>${teachervo.teacher_gender}</td>
			        <td>${teachervo.teacher_registerday}</td>
			        <td>${teachervo.teacher_status}</td>
			        <td>
			        	<button type="button" class="btn adminBtn" id="editBtn">정보수정</button>
			        	<button type="button" class="btn adminBtn" id="detailBtn">상세</button>
			        </td>
			      </tr>	
			      </c:forEach>
			   </tbody>
		 </table> <!-- lectureList -->
		</div><!-- admin_divTbl -->
		
		<div>${pageBar}</div>
			</div> <!-- admin_div -->
			
		<!-- 	<hr id="line"/> -->
		</div>	
	</div> <!-- container -->
</body>
</html>