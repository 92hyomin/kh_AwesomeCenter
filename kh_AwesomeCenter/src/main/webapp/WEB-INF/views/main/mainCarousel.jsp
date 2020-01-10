<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>
<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/mainCarousel.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>
$(document).ready(function(){
	
	$(".stop").click(function(){
		$(".carousel").prop('data-interval',1000);
		/* $("#myCarousel").load(window.location.href + "#myCarousel"); */
	});
	
});
</script>

<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="1000">
	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
	
		<div class="item active">
		<img src="/awesomecenter/resources/hmimages/carousel1.jpg" alt="" width="400" height="300">
		</div>
		
		<div class="item">
		<img src="/awesomecenter/resources/hmimages/carousel2.jpg" alt="" width="400" height="300">
		</div>
		
		<div class="item">
		<img src="/awesomecenter/resources/hmimages/carousel3.jpg" alt="" width="400" height="300">
		</div>
		
		<div class="item">
		<img src="/awesomecenter/resources/hmimages/carousel4.jpg" alt="" width="400" height="300">
		</div>
		
		<!-- Left and right controls -->
		<div class="lrControl" align="center">
		<a class="carousel-control prev" href="#myCarousel" role="button" data-slide="prev">
			<img alt="" src="/awesomecenter/resources/hmimages/prev.png" width="20px">
		</a>
		
		<a class="carousel-control next" href="#myCarousel" role="button" data-slide="next">
			<img alt="" src="/awesomecenter/resources/hmimages/next.png" width="20px">
		</a>
		</div>
		
		<!-- Indicators -->
		<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
		<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>
	</div> 
</div>

