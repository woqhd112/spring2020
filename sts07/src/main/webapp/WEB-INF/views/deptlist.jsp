<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
	<c:url value="/" var="root"></c:url>
<html>
<head>
<title>Home</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="${root }resources/css/bootstrap.css"/>
<style type="text/css">
	body {
		padding-top: 70px; 
	}
</style>
<script type="text/javascript" src="${root }resources/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }resources/js/bootstrap.js"></script>
</head>
<body>
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
	        <li><a href="${root }">HOME <span class="sr-only">(current)</span></a></li>
	        <li class="dropdown active">
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
  				<div class="jumbotron">
				  <h1>DEPT Table!</h1>
				  <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
				</div>
  				<!-- end -->
  			</div>
  		</div>
		<div class="row">
  			<div class="col-md-12">
  				<table class="table">
  					<thead>
	  					<tr>
	  						<th>부서번호</th>
	  						<th>부서명</th>
	  						<th>지역</th>
	  					</tr>
  					</thead>
  					<tbody>
  						<c:forEach items="${list }" var="bean">
  							<tr>
  								<td>${bean.deptno }</td>
  								<td>${bean.dname }</td>
  								<td>${bean.loc }</td>
  							</tr>
  						</c:forEach>
  					</tbody>
  				</table>
  			</div>
  		</div>
	</div>
</body>
</html>
