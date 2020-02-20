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
	<c:if test="${bean ne null }">
		<c:if test="${bean.deptno == 0 }">
			<div class="alert alert-danger alert-dismissible" role="alert">
			  	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			  	<strong>Error!</strong>부서명을 반드시 입력하세요
			</div>
		</c:if>
	</c:if>

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
				  <p><a class="btn btn-primary btn-lg" href="#" role="button">입력</a></p>
				</div>
  				<!-- end -->
  			</div>
  		</div>
		<div class="row">
  			<div class="col-md-12">
  				<h1>${title } 페이지</h1>
  				<form class="form-horizontal" action="${action }" method="${method }">
	  				<c:if test="${title ne '입력' }">
					  <div class="form-group">
					    <label for="deptno" class="col-sm-2 control-label">부서번호</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="deptno" id="deptno" placeholder="부서번호를 입력하세요." value="${bean.deptno }" readonly="readonly">
					    </div>
					  </div>
	  				</c:if>
				  <div class="form-group">
				    <label for="dname" class="col-sm-2 control-label">부서명</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" name="dname" id="dname" placeholder="부서명을 입력하세요." value="${bean.dname }" ${disabled }>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="loc" class="col-sm-2 control-label">지역</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" name="loc" id="loc" placeholder="지역명을 입력하세요." value="${bean.loc }" ${disabled }>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-primary">${btn1 }</button>
				    </div>
				  </div>
				</form>
  			</div>
  		</div>
	</div>
</body>
</html>
