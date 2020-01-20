<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%-- ======= tile1 의 header 페이지 만들기  ======= --%>
<%
	String cxtpath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>회원리스트</title>

<style type="text/css">

@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

   #memberList_body {
      font-family: "Noto Sans Kr", Nanum Gothic, "나눔고딕", sans-serif;
   }
   
   #memberList_h2 h2 {
   
      font-weight: 500;
      font-size: 52px;
      margin-bottom: 20px;
      letter-spacing: -3px;
      font-family: "Noto Sans Kr";
   
   }
   
   #memberList_line {
        border: solid 1px #bfbfbf;
   }
   
   table#mbrTbl {
	
		margin-top: 12px;
		width: 100%;
		border-collapse: collapse;
	
	}

	table#mbrTbl th{
		background: #f4f4f4;
		border-collapse: collapse;
		height: 50px;
	}

	table#mbrTbl th, table#mbrTbl td{
	
		border-collapse: collapse;
	
	}
	table#mbrTbl td{
	    
	    padding: 11px 10px 10px;
	    /* border-top: 1px solid blue; */
	    color: #353535;
	    vertical-align: middle;
	    word-break: break-all;
	    word-wrap: break-word;
	}
	#member_search{
		vertical-align:middle; 
		height: 35px;
		width: 80px;
		font-size: 11pt;
	}
	
	#member_search_box{
	/*    border: solid 1px red; */
	   list-style:none;
	   vertical-align: middle;
	   height: 35px;
	   margin: 35px 35px 0px 0px;
	}
	
	#member_SearchBtn{
	   background-color: #2d2d2d;
	   color:white;
	   outline: none;
	   border: none;
	   height: 35px;
	   width: 70px;
	   font-size: 11pt;
	}
	
	#member_SearchBtn:hover{
	   background-color: #595959;
	   cursor: pointer;
	   
	}
	#Admin_btn_memberclass{
	   background-color: #7a6258;
	   outline: none;
	   border: none;
	   cursor: pointer;
	   height: 30px;
	   width: 80px;
	   color: white;
	}
	#Admin_btn_memberclass:hover{
	   background-color: #604020;
	   transition: all 0.8s;
	}
	
	#Admin_btn_memberinfo{
	   background-color: #7a6258;
	   outline: none;
	   border: none;
	   cursor: pointer;
	   height: 30px;
	   width: 80px;
	   color: white;
	}
	
	#Admin_btn_memberinfo:hover{
	   background-color: #604020;
	   transition: all 0.8s;
	}
	
	
	#Admin_btn_delete{
	   outline: none;
	   border: none;
	   cursor: pointer;
	   height: 30px;
	   width: 50px;
	   font-weight: bold;
	   background-color: #e6e6e6;
	}
	
	#Admin_btn_delete:hover{
	   background-color: #cccccc;
	   transition: all 0.8s;
	}
	
	 #admin_h2 h2 {
   
      font-weight: 500;
      font-size: 52px;
      margin-top: 50px;
      margin-bottom : 40px;
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

</style>
<script type="text/javascript">

	function goDetailMember(idx){

		location.href=""+idx;

	}
	
	$(function() {
		 
		$("#Admin_btn_memberinfo").click(function() {
			
			
			
			window.open("/awesomecenter/adminMemberInfo.to");
			
		});
		
	});

</script>

</head>
<body id="memberList_body">

 <div id = "admin_nvar" align="right" style = "margin: 40px 180px 0 0;">   
            <div style = "border-right: 1px solid #e5e5e5; padding : 0 12px; margin : 0;" ><i class="fa fa-lock" style="font-size:15px; padding:2px 6px 0 0;"></i>관리자 전용 메뉴</div>
            <div>회원 리스트</div>
   </div>

     <div align="center" id = "memberList_h2">
         <h2>회원 리스트</h2>
      </div>
      
      <!-- <hr id="memberList_line"/> -->
      
<div style="width:80%; margin:0 auto;"> 	
   
  
   
   
 	  <div style="float:right;">
 	    <ul>
 	  	  <li id="member_search_box">
 	  		<select id="member_search" name="member_search">
				<option value="">검색어</option>
				<option value="name">이름</option>
				<option value="email">이메일</option>
				<option value="id">아이디</option>
			</select>
			<input type="text" style="height: 29px;"/>
			<button id="member_SearchBtn" style="vertical-align:middle;">검색</button>
 	  	  </li>
 	  	</ul>
 	  </div>
 	  
 	  <table id = "mbrTbl">
				<thead>
					<tr>
						<th></th>
						<th>회원번호</th>
						<th>아이디</th>
						<th>성명</th>
						<th>이메일</th>
						<th>전화번호</th>
						<th>주소</th>
						<th>가입일자</th>
						<th>가입상태</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="membervo" items="${memberList}" varStatus="status">
							<tr style="text-align: center;">
								<td>1</td>
								<td>20190101</td>
								<td>YunaID</td>
								<td>${membervo.Name}</td>
								<td>${membervo.email}</td>
								<td>010-1234-5678</td>
								<td>경기도 의정부시</td>
								<td>2019-08-02</td>
								<td>활동중</td>
							<td>
								  <button id="Admin_btn_memberinfo">상세정보</button>
								  <button id="Admin_btn_memberclass" onclick="goDetailMember(${mbrlist.idx});">수강정보</button>
								  <button id="Admin_btn_delete">삭제</button>
								</td>
							</tr>	
					</c:forEach>		
					<%-- <c:if test = "${ memberList != null }">
						<c:forEach var = "mbrlist" items="${ memberList }" varStatus="status" > 
							<tr>
								<td>${ status.count }</td>
								<td>${ mbrlist.idx }</td>
								<td>${ mbrlist.userid }</td>
								<td>${ mbrlist.name }</td>
								<td>${ mbrlist.email }</td>
								<td>${ mbrlist.registerday }</td>
								<td>${ mbrlist.registerday }</td>
								<td>${ mbrlist.registerday }</td>
								<td>${ mbrlist.registerday }</td>
								<td>${ mbrlist.registerday }</td>
							</tr>	
						</c:forEach>
					</c:if>
					
					<c:if test="${ memberList == null }">
					<tr>
						<td colspan = "9">
							<span>가입된 회원이 없습니다.</span>
						</td>
					</tr>
					</c:if> --%>
					
				</tbody>
			</table>
 	  
 	  
 	  
 	  
</div> 	  
</body>
</html>