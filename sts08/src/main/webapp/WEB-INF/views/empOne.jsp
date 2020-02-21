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
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#delete').show();
		$('form').one('submit',function(){
			$('#delete').hide();
			$('.page-header').html('<h1>수정페이지 <small>EMP TABLE DETAIL</small></h1>');
			$('#name,#pay').removeAttr('disabled');
			return false;
		});
		
		$('#delete').on('click',delRecord);
		
	});
	function delRecord(){
		var param={'sabun': $('#sabun').val() };
		$.post('../delete',param,function(){
			location.href="../list";
		});	
	}
</script>
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
				  <li class="active">${bean.sabun }</li>
				</ol>
			</div>
		</div>
		<div class="row">
  			<div class="col-md-12">
  				<!-- start -->
  				
  				<div class="page-header">
				  <h1>상세페이지 <small>EMP TABLE DETAIL</small></h1>
				</div>
				<form class="form-horizontal" action="../edit" method="post">
					<div class="form-group">
					    <label for="sabun" class="col-sm-2 control-label">사번</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="sabun" id="sabun" placeholder="사번을 입력하세요." value="${bean.sabun }" readonly="readonly">
					    </div>
					</div>
					<div class="form-group">
					    <label for="name" class="col-sm-2 control-label">이름</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력하세요." value="${bean.name }" disabled="disabled">
					    </div>
					</div>
					<div class="form-group">
					    <label for="nalja" class="col-sm-2 control-label">날짜</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="nalja" id="nalja" placeholder="날짜를 입력하세요." value="${bean.nalja }" disabled="disabled">
					    </div>
					</div>
					<div class="form-group">
					    <label for="pay" class="col-sm-2 control-label">금액</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="pay" id="pay" placeholder="금액을 입력하세요." value="${bean.pay }" disabled="disabled">
					    </div>
					</div>
					<div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
						    <div class="btn-group btn-group-justified" role="group" aria-label="...">
						      <button type="submit" class="btn btn-primary">수정</button>
						      <button id="delete" type="button" class="btn btn-default">삭제</button>
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
