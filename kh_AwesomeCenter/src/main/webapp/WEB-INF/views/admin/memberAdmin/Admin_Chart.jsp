<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>관리자 차트</title>

<style type="text/css">

 #admin_nvar div {    
      display: inline-block;
      font-size: 14px;
      margin: 2px 12px 0;
      color : #666;
      font-weight: 400;
   }
   
    #AdminChart_h2 h2{
   
      font-weight: 500;
      font-size: 52px;
      margin-bottom: 20px;
      letter-spacing: -3px;
      font-family: "Noto Sans Kr";
   
   }
   
   .AdminCharBtn{
   	  padding: 10px 100px 10px 100px; 
   	  height: 40px;
   	  margin: 5px;
   	  outline: none; 
      border: none; 
      background-color: #fff7e6;
      font-size: 14px;
      width: 350px;
   }
   
   .AdminCharBtn:hover{
   	  cursor: pointer;
      transition: all 0.8s;
      background-color: #ffeecc;
   	  
   }

</style>

<script type="text/javascript">



	$(function() {
		$("#AdminTeachChart_Cont").hide(); 
		
		$("#AdminTimeChart").click(function(){
			
			$("#AdminTimeChart_Cont").show();
			$("#AdminTeachChart_Cont").hide();
			
			$("#AdminTimeChart").css('background-color','#ffeecc');
			$("#AdminTeachChart").css('background-color','#fff7e6');
			
			});
		
		$("#AdminTeachChart").click(function(){
			
			$("#AdminTeachChart_Cont").show();
			$("#AdminTimeChart_Cont").hide(); 
			
			$("#AdminTeachChart").css('background-color','#ffeecc');
			$("#AdminTimeChart").css('background-color','#fff7e6');
			});
			
		});

</script>


</head>
<body id="Admin_Chart_body">

	  <div id = "admin_nvar" align="right" style = "margin: 40px 180px 0 0;">   
            <div style = "border-right: 1px solid #e5e5e5; padding : 0 12px; margin : 0;" ><i class="fa fa-lock" style="font-size:15px; padding:2px 6px 0 0;"></i>관리자 전용 메뉴</div>
            <div>매출 ∙ 수입</div>
       </div>

	  <div align="center" id = "AdminChart_h2">
         <h2>매출 ∙ 수입</h2>
      </div>
      
      <div style="width:80%; margin:0 auto;"> 
      
      	
      
      </div>
      
      <div style="margin-top: 30px; text-align: center;">
      	<button class="AdminCharBtn" id="AdminTimeChart">시기별 매출</button>
        <button class="AdminCharBtn" id="AdminTeachChart">카테고리별 강사 정보</button>
      </div>
      
      <div style="border: solid 1px orange; text-align: center; width: 60%; height: 500px; margin: 0 auto;">
        <span id="AdminTimeChart_Cont">시기별 매출 통계 차트</span>
        <span id="AdminTeachChart_Cont">강사 수입 통계 차트</span>
      
      </div>

</body>
</html>