<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- ======= tile1 의 header 페이지 만들기  ======= --%>
<%
	String cxtpath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>수강 정보</title>

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
        border: solid 0.5px #bfbfbf;
        margin-top: 40px;
        width: 70%;
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
	#Admin_btn_classdelete{ 
	   background-color: #7a6258;
	   outline: none;
	   border: none;
	   cursor: pointer;
	   height: 30px;
	   width: 100px;
	   color: white;
	}
	#Admin_btn_classdelete:hover{
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
   
    #Admin_excelBtn{
   	  border-radius: 8px;
   	  height: 26px;
   	  width: 130px;
   	  background-color: #f2f2f2;
   	  border: none; 
   	  outline: none;
   
   }
    #Admin_excelBtn:hover{
      cursor: pointer;
      background-color: #d9d9d9;
      transition: all 0.8s;
    }
    
    #AdminClassListBackBtn{
      height: 40px; 
      width: 100px;
      outline: none; 
      border: none; 
      background-color: #fff7e6;
     
      
    }
    #AdminClassListBackBtn:hover{
      cursor: pointer;
      transition: all 0.8s;
      background-color: #ffeecc;
    }
   

</style>
<script type="text/javascript">

	function goDetailMember(idx){

		location.href=""+idx;

	}

</script>

</head>
<body id="memberList_body">
     
      <div id = "admin_nvar" align="right" style = "margin: 40px 180px 0 0;">   
            <div style = "border-right: 1px solid #e5e5e5; padding : 0 12px; margin : 0;" ><i class="fa fa-lock" style="font-size:15px; padding:2px 6px 0 0;"></i>관리자 전용 메뉴</div>
            <div>수강 정보</div>
     </div>
   
     <div align="center" id = "memberList_h2">
         <h2>${mbrlist.name}님 수강 정보</h2>
      </div>
      
     <!--  <hr id="memberList_line"/> -->
      
<div style="width:80%; margin:0 auto;"> 	
   
   
  
    <div style="float: right; margin: 18px 10px 8px 0px;">
 	    <button id="Admin_excelBtn"><i class='far fa-arrow-alt-circle-down'></i>&nbsp;&nbsp;엑셀 다운로드</button>
 	  </div>
 	  
 	  <table id = "mbrTbl">
				<thead>
					<tr>
						<th></th>
						<th>접수일</th>
						<th>강좌명</th>
						<th>강좌일정</th>
						<th>수강료</th>
						<th>접수 상태</th>
						<th>취소 및 환불</th>
					</tr>
				</thead>
				<tbody>
				
							<tr style="text-align: center;">
								<td>1</td>
								<td>2019-12-20</td>
								<td>앙금 꽃케이크 원데이 클래스</td>
								<td>2019.12.31 - 2019.12.31</td>
								<td>50,000</td>
								<td>수강 중</td>
								<td>
								  <button id="Admin_btn_classdelete">수강취소</button>
								</td>
							</tr>	
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
 	  
 	<!--   <hr id="memberList_line"/> -->
 	  
 	  <div style="text-align: center; margin: 90px 0px 70px 0px;">
 	    
 	  	<button id="AdminClassListBackBtn"">목록으로</button>
 	  </div>
</div> 	  
</body>
</html>