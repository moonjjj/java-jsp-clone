<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/bootstrap.css">
<title>반응형 웹</title>
</head>
<style>
body{
	text-align:center;
}
.header{
	background:black;
	height:100px;
	font-size:5em;
}
.nav{
	background:green;
	height:100px;
}
.container{
	background:red;
	height:300px;
}
.col-lg-4{
	font-size:5em;
	
}
</style>
<body>
	<div class="header">
		<div class="col-lg-12">
		<a>hello</a>
		</div>
	</div>
	
	<div class="nav">
		
		<ol>
			<li>일번</li>
			<li>이번</li>
			<li>삼번</li>
		</ol>
		
	</div>
	
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">Ctrl + (+ -)</div>
		<div class="col-lg-4"></div>
	</div>
</body>
</html>