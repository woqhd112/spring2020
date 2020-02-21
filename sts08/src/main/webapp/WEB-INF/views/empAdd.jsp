<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
	<c:url value="/" var="root"></c:url>
<html>
<head>
<title>Home</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css"/>
<style type="text/css">
	body {
		padding-top: 70px; 
	}
</style>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
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
				<ol class="breadcrumb">
				  <li><a href="#">HOME</a></li>
				  <li><a href="#">EMP</a></li>
				  <li class="active">INSERT</li>
				</ol>
			</div>
		</div>
		<div class="row">
  			<div class="col-md-12">
  				<!-- start -->
  				
  				<div class="page-header">
				  <h1>입력페이지 <small>EMP TABLE ADD</small></h1>
				</div>
				<form class="form-horizontal" method="post">
					<div class="form-group">
					    <label for="name" class="col-sm-2 control-label">이름</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력하세요.">
					    </div>
					</div>
					<div class="form-group">
					    <label for="pay" class="col-sm-2 control-label">금액</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="pay" id="pay" placeholder="금액을 입력하세요.">
					    </div>
					</div>
					<div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
						    <div class="btn-group btn-group-justified" role="group" aria-label="...">
						      <button type="submit" class="btn btn-primary">Insert</button>
						      <button type="reset" class="btn btn-default">Reset</button>
						      <button type="button" class="btn btn-default" onclick="history.back();">Back</button>
						     </div>
					    </div>
					</div>
				</form>
  				<!-- end -->
  			</div>
  		</div>
		<div class="row">
  			<div class="col-md-12"></div>
  		</div>
	</div>
</body>
</html>
