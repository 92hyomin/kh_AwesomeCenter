<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String ctxPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차트그리기 예제</title>

<script type="text/javascript" src="<%=ctxPath%>/resources/js/jquery-3.3.1.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>

<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$("#searchType").bind("change",function(){
		var param = getUrlParameter("class_seq");
		func_Ajax($(this).val(),param);
		
	});

}); //end of $(document).ready(function(){});

function func_Ajax(searchTypeVal, class_seq){
	switch(searchTypeVal){
	case "":
		$("#chart_container").empty();
		break;
	
	case "agegroup":
		$.ajax({
			url: "/startspring/chart/agegroupJSON.to",
			dataType:"JSON",
			success: function(json){
				$("#chart_container").empty();
				var resultArr = [];
				for(var i=0; i<json.length; i++){
					var obj = {name: json[i].DEPARTMENT_NAME,
							      y: Number(json[i].PERCENTAGE) };
					resultArr.push(obj);
				}
				
				Highcharts.chart('chart_container', {
				    chart: {
				        plotBackgroundColor: null,
				        plotBorderWidth: null,
				        plotShadow: false,
				        type: 'pie'
				    },
				    title: {
				        text: '우리회사 부서별 인원통계'
				    },
				    tooltip: {
				        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
				    },
				    accessibility: {
				        point: {
				            valueSuffix: '%'
				        }
				    },
				    plotOptions: {
				        pie: {
				            allowPointSelect: true,
				            cursor: 'pointer',
				            dataLabels: {
				                enabled: true,
				                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
				            }
				        }
				    },
				    series: [{
				        name: '인원비율',
				        colorByPoint: true,
				        data: resultArr
				    }]
				});
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		});
		break;
		
	case "gender":
		$.ajax({
			url: "/awesomecenter/chart/genderJSON.to?",
			dataType:"JSON",
			data: { 
				"class_seq" : class_seq
				//"class_seq": 
			},
			success: function(json){
				if(json.length != 0){
				$("#chart_container").empty();
				var resultArr = [];
				for(var i=0; i<json.length; i++){
					var obj = {name: json[i].gender,
							      y: Number(json[i].PERCENTAGE) };
					resultArr.push(obj);
				}
				
				Highcharts.chart('chart_container', {
				    chart: {
				        plotBackgroundColor: null,
				        plotBorderWidth: null,
				        plotShadow: false,
				        type: 'pie'
				    },
				    title: {
				        text: '우리회사 성별 인원통계'
				    },
				    tooltip: {
				        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
				    },
				    accessibility: {
				        point: {
				            valueSuffix: '%'
				        }
				    },
				    plotOptions: {
				        pie: {
				            allowPointSelect: true,
				            cursor: 'pointer',
				            dataLabels: {
				                enabled: true,
				                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
				            }
				        }
				    },
				    series: [{
				        name: '인원비율',
				        colorByPoint: true,
				        data: resultArr
				    }]
				});
				}
				else{
					$("#chart_container").html("<span>수강생 정보가 없습니다.</span>");
				}
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		});
		break;
		
	}	
}//end of function func_Ajax(searchTypeVal){}

var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = window.location.search.substring(1),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
        }
    }
};

</script>
</head>
<body>
	<div align="center">
		<h2>수강생 통계정보(차트)</h2>
		<form name="searchFrm" style="margin-bottom: 80px;">
			<select name="searchType" id="searchType" style="height: 25px;">
				<option value="">통계선택</option>
				<option value="agegroup">수강생 연령대</option>
				<option value="gender">수강생 성별</option>
			</select>
		</form>
		<div id="chart_container" style="min-width: 300px; height: 400px; max-width: 600px; margin: 0 auto;"></div>
	</div>
</body>
</html>