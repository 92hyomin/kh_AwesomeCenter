<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 등록하기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<style type="text/css">

@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

   #payment_body {
      font-family: "Noto Sans Kr", Nanum Gothic, "나눔고딕", sans-serif;
      
   }
   
   #pay_h2 h2 {
   
      font-weight: 500;
      font-size: 52px;
      margin-bottom: 20px;
      letter-spacing: -3px;
      font-family: "Noto Sans Kr";
   
   }
   
   #container {
   		width:85%;
   		margin: 0 auto;
   		font-size: 10pt;
   }
   
   #main_container{
   		width : 70%;
   		margin: 0 auto;
   }
   
   #line {
   	  border: solid 1px #bfbfbf;
   }
   
   
   .tblTop {
   		margin: 40px 0 0 5px;
	 	text-align: left;
   }

   .tblTop > h5 {
   		font-weight: bold;
   }

   .infoDivClass {
  		 overflow: hidden;
   }
   
   #infoDiv1_img {
    	border: solid 1px #ddd;
   		float:left;
   		width: 25%;
   		height: 100%;
   }
   
   #infoDiv1_tbl {
   		float:right;
   		width : 72%;
   		height: 100%;
   }
   
   
  .teacherInfo th {
  	 background-color: #f9f2eb;
  	 width : 110px;
  	 padding: 4px;
  	 vertical-align: middle !important;
  }
  
  #postCodeBtn{
  	height: 23px;
  	width: 35px;
  	font-size: 8pt;
  	text-align: center;
  	vertical-align: middle;
  }
  
  #postCodeSpan {
  	font-size: 8pt;
  	text-align: center;
  	vertical-align: middle;
  }
  
  .addrInput {
  	margin-right:7px;
  	border: hidden;
  	border-bottom: solid 1px #d9d9d9 !important;
  }
   
   .t_categorySelect {
    	padding : 4px;
   		margin-right: 10px;
   }
   
   #registerBtn, #resetBtn {
   		width : 140px;
   		height : 50px;
   		background-color: #5e4122;
   		color: white;
   		font-size: 19px;
   		margin: 60px 0;
   }
   
  
</style>


<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> <!--다음 우편번호 -->

<script type="text/javascript">
//우편번호 찾기 버튼
	function goSearchPostCode(){
		new daum.Postcode({
		oncomplete: function(data) {
			 // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                } 
            } 
            
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("postcode").value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
           // document.getElementById("addr2").focus();
			    
		}
	}).open();
	}//goSearchPostCode------------

</script>
</head>
<body id="#payment_body">
	<div id="container">
		<div align="center" id="pay_h2">
			<h2>신규 강사 등록</h2>
		</div>

		<hr id="line" />

		<div id="main_container">

			<div id="infoDiv1" class="infoDivClass" style="margin-top: 60px;">
				<div id="infoDiv1_img">
					<img src="image/sampleImg.jpg" width="100%;" />
				</div>

				<div id="infoDiv1_tbl">

					<table class="table table-bordered teacherInfo" id="teacherInfo1">
						<tr>
							<th>성명</th>
							<td>지서영</td>
							<th>이메일</th>
							<td>aaa@naver.com</td>
						</tr>
						<tr>
							<th>주민등록번호</th>
							<td>111111-2222222</td>
							<th>연락처1</th>
							<td>01000000000</td>
						</tr>
						<tr>
							<th>성별</th>
							<td>여자</td>
							<th>연락처1</th>
							<td>01000000000</td>
						</tr>
						<tr>
							<th>우편번호</th>
							<td colspan="3"><input type="text" class="addrInput" name="postcode" id="postcode"/>
											<button type="button" onclick="goSearchPostCode();" class="btn btn-default" id="postCodeBtn"><span id="postCodeSpan">검색</span></button>
							</td>
						</tr>
						<tr>
							<th>자택주소</th>
							<td colspan="3"><input type="text" name="addr1" id="addr1" class="addrInput"/><input type="text" name="addr1" id="addr1" class="addrInput"/></td>
						</tr>
					</table>

				</div>
				<!-- infoDiv1_tbl -->
			</div>
			<!-- infoDiv1 -->

			<div id="infoDiv2" class="infoDivClass">
				<div class="tblTop">
					<h5>구분</h5>
				</div>

				<table class="table table-bordered teacherInfo" id="teacherInfo2">
					<tr>
						<th style="text-align: center;">담당 분야</th>
						<td>
							<select class="t_categorySelect" name="t_classCategory1" id="t_classCategory1">
									<option value="">1차 분류 선택</option>
									<option value="category01">성인</option>
									<option value="category02">아동</option>			
							</select>
							
							<select class="t_categorySelect" name="t_classCategory2" id="t_classCategory2">
									<option value="">2차 분류 선택</option>
									<option value="category03">베이킹</option>
									<option value="category04">베이킹</option>
									<option value="category05">베이킹</option>
									<option value="category06">베이킹</option>
									<option value="category07">베이킹</option>
									<option value="category08">베이킹</option>
									<option value="category09">베이킹</option>
									<option value="category010">베이킹</option>
							</select>
					 </td>
					</tr>
				</table>
			</div>
			<!-- infoDiv2 -->

			<div id="infoDiv3" class="infoDivClass">
				<div class="tblTop">
					<h5>학력 사항</h5>
				</div>

				<table class="table table-bordered teacherInfo" id="teacherInfo3">
					<tr>
						<th style="text-align: center;">학교명</th>
						<td></td>
					</tr>
					<tr>
						<th style="text-align: center;">전공</th>
						<td></td>
					</tr>
				</table>
			</div>
			<!-- infoDiv3 -->

			<div id="infoDiv4" class="infoDivClass">
				<div class="tblTop">
					<h5>경력 사항</h5>
				</div>

				<table class="table table-bordered teacherInfo" id="teacherInfo4">
					<tr>
						<th style="text-align: center; height:60px;">근무처</th>
						<td></td>
					</tr>
					<tr>
						<th style="text-align: center; height:60px;">근무처</th>
						<td></td>
					</tr>
				</table>
			</div>
			<!-- infoDiv4 -->

			<div align="center">
				<button type="button" class="btn" id="registerBtn">등록</button>
				<button type="button" class="btn" id="resetBtn">취소</button>
			</div>

		</div> <!-- main_container -->
	</div> <!-- container -->
</body>
</html>