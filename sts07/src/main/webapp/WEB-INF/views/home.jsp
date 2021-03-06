<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
<html>
<head>
<title>Home</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css"/>
<style type="text/css">
	body {
		padding-top: 70px; 
	}
</style>
<script type="text/javascript" src="resources/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
</head>
<body>
	<c:url value="/" var="root"></c:url>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="${root }">Brand</a>
	    </div>
	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="active"><a href="${root }">HOME <span class="sr-only">(current)</span></a></li>
	        <li class="dropdown">
	        	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">DEPT <span class="caret"></span></a>
	        	<ul	 class="dropdown-menu">
	        		<li><a href="${root }dept/list">리스트</a></li>
	        		<li role="separator" class="divider"></li>
	        		<li><a href="${root }dept/add">게시글 등록</a></li>
	        	</ul>
	        </li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">E M P <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="${root }emp/list">리스트</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="${root }emp/add">게시글 등록</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	<div class="container">
		<div class="row">
  			<div class="col-md-12">
  				<!-- start -->
  				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
				    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
				  </ol>
				
				  <!-- Wrapper for slides -->
				  <div class="carousel-inner" role="listbox">
				    <div class="item active">
				      <img src="resources/imgs/big1.jpg" alt="..."/>
				      <div class="carousel-caption">
					    <h3>환영합니다</h3>
					    <p>welcome</p>
					  </div>
				    </div>
				    <div class="item">
				      <img src="resources/imgs/big2.jpg" alt="..."/>
				      <div class="carousel-caption">
					    <h3>DEPT</h3>
					    <p>list</p>
					  </div>
				    </div>
				    <div class="item">
				      <img src="resources/imgs/big3.jpg" alt="..."/>
				      <div class="carousel-caption">
					    <h3>EMP</h3>
					    <p>list</p>
					  </div>
				    </div>
				  </div>
				
				  <!-- Controls -->
				  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div>
  				<!-- end -->
  			</div>
  		</div>
		<div class="row">
  			<div class="col-md-12"></div>
  		</div>
	</div>
</body>
</html>
