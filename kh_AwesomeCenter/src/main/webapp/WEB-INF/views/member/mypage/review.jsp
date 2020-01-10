<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강후기</title>

<style type="text/css">
	table td.noData {
	    height: 277px;
	    font-size: 22px;
	    color: #222;
	}
</style>

<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/lectureList.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<script type="text/javascript" src="<%= ctxPath%>/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

</script>

</head>
<body>

	<div id="container_kdh">
        <div id="content_kdh">
            <div class="menu_kdh">
				<a href="#" class="material-icons atag">home</a>
				<a href="<%= ctxPath%>/member/mypage.to" class="atag">My문화센터</a>
				<a href="<%= ctxPath%>/member/mypage.to" class="atag">마이페이지</a>
				<a href="<%= ctxPath%>/member/review.to" class="atag">수강 후기</a>
			</div>
            <div class="main_kdh lectureList_kdh">
                <h2 class="h2">나의 수강후기</h2>
				<div class="search_kdh">
					<span class="select_kdh" style="width:350px;">
						<select name="year" id="year" class="option_kdh select" title="년도 선택">
							<option value="2020" class="option" selected>2020년</option>
							<option value="2019" class="option">2019년</option>
							<option value="2018" class="option">2018년</option>
							<option value="2017" class="option">2017년</option>
							<option value="2016" class="option">2016년</option>							
						</select>
					</span>
					<span class="select_kdh" style="width:350px;">
						<select name="term" id="term" class="option_kdh select" title="학기 선택">						
							<option value="1" class="option">봄학기</option>							
							<option value="2" class="option">여름학기</option>	
							<option value="3" class="option">가을학기</option>	
							<option value="4" class="option" selected>겨울학기</option>
						</select>
					</span>
					<a href="#" id="dSearch" class="btn_kdh btnBlack_kdh atag"><span>검색</span></a>
				</div>
                <div class="infoTable_kdh typeReview overType">
                    <table class="table">
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:180px;">
                        </colgroup>
                        <tbody>
							<tr>
                                <td colspan="2" class="noData">신청 강좌가 없습니다.</td>
                            </tr>  
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</body>
</html>