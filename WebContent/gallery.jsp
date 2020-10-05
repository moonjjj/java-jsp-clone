<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Moon's gallery</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<script src="./js/jquery-3.5.1.js"></script>

<script>
//js 파일로 뺄땐 이렇게 뺀다!
	var like1 = 0;
	var like2 = 0;
	var like3 = 0;
	var like4 = 0;
	var like5 = 0;
	var like6 = 0;
	var like7 = 0;
	var like8 = 0;
	var like9 = 0;
	var like10 = 0;
	var like11 = 0;
	var like12 = 0;
	
	var likeH1 = 0;
	var likeH2 = 0;
	var likeH3 = 0;
	var likeH4 = 0;
	var likeH5 = 0;
	var likeH6 = 0;
	var likeH7 = 0;
	var likeH8 = 0;
	var likeH9 = 0;
	var likeH10 = 0;
	var likeH11 = 0;
	var likeH12 = 0;
	
	$(document).ready(function(){
		$("#firstButton").click(function(){//좋아요
			$("#count1").text(++like1);
		});
		$("#firstButtonCancel").click(function(){ //좋아요 취소
			$("#count1").text(--like1);
		});
		$("#firstHButton").click(function(){ //싫어요
			$("#countH1").text(++likeH1);
		});
		$("#firstHButtonCancel").click(function(){ //싫어요 취소
			$("#countH1").text(--likeH1);
		});
		
		$("#SecondButton").click(function(){//좋아요
			$("#count2").text(++like2);
		});
		$("#secondButtonCancel").click(function(){ //좋아요 취소
			$("#count2").text(--like2);
		});
		$("#secondHButton").click(function(){ //싫어요
			$("#countH2").text(++likeH2);
		});
		$("#secondHButtonCancel").click(function(){ //싫어요 취소
			$("#countH2").text(--likeH2);
		});
		
		$("#thirdButton").click(function(){//좋아요
			$("#count3").text(++like3);
		});
		$("#thirdButtonCancel").click(function(){ //좋아요 취소
			$("#count3").text(--like3);
		});
		$("#thirdHButton").click(function(){ //싫어요
			$("#countH3").text(++likeH3);
		});
		$("#thirdHButtonCancel").click(function(){ //싫어요 취소
			$("#countH3").text(--likeH3);
		});
		
		$("#fourthButton").click(function(){//좋아요
			$("#count4").text(++like4);
		});
		$("#fourthButtonCancel").click(function(){ //좋아요 취소
			$("#count4").text(--like4);
		});
		$("#fourthHButton").click(function(){ //싫어요
			$("#countH4").text(++likeH4);
		});
		$("#fourthHButtonCancel").click(function(){ //싫어요 취소
			$("#countH4").text(--likeH4);
		});
		
		$("#fifthButton").click(function(){//좋아요
			$("#count5").text(++like5);
		});
		$("#fifthButtonCancel").click(function(){ //좋아요 취소
			$("#count5").text(--like5);
		});
		$("#fifthHButton").click(function(){ //싫어요
			$("#countH5").text(++likeH5);
		});
		$("#fifthHButtonCancel").click(function(){ //싫어요 취소
			$("#countH5").text(--likeH5);
		});
		
		$("#sixthButton").click(function(){//좋아요
			$("#count6").text(++like6);
		});
		$("#sixthButtonCancel").click(function(){ //좋아요 취소
			$("#count6").text(--like6);
		});
		$("#sixthHButton").click(function(){ //싫어요
			$("#countH6").text(++likeH6);
		});
		$("#sixthHButtonCancel").click(function(){ //싫어요 취소
			$("#countH6").text(--likeH6);
		});
		
		$("#seventhButton").click(function(){//좋아요
			$("#count7").text(++like7);
		});
		$("#seventhButtonCancel").click(function(){ //좋아요 취소
			$("#count7").text(--like7);
		});
		$("#seventhHButton").click(function(){ //싫어요
			$("#countH7").text(++likeH7);
		});
		$("#seventhHButtonCancel").click(function(){ //싫어요 취소
			$("#countH7").text(--likeH7);
		});
		
		$("#eighthButton").click(function(){//좋아요
			$("#count8").text(++like8);
		});
		$("#eigthButtonCancel").click(function(){ //좋아요 취소
			$("#count8").text(--like8);
		});
		$("#eigthHButton").click(function(){ //싫어요
			$("#countH8").text(++likeH8);
		});
		$("#eigthHButtonCancel").click(function(){ //싫어요 취소
			$("#countH8").text(--likeH8);
		});
		
		$("#ninthButton").click(function(){ //좋아요
			$("#count9").text(++like9);
		});
		$("#ninthButtonCancel").click(function(){ //좋아요 취소
			$("#count9").text(--like9);
		});
		$("#ninthHButton").click(function(){ //싫어요
			$("#countH9").text(++likeH9);
		});
		$("#ninthHButtonCancel").click(function(){ //싫어요 취소
			$("#countH9").text(--likeH9);
		});
		
		$("#tenthButton").click(function(){//좋아요
			$("#count10").text(++like10);
		});
		$("#tenthButtonCancel").click(function(){ //좋아요 취소
			$("#count10").text(--like10);
		});
		$("#tenthHButton").click(function(){ //싫어요
			$("#countH10").text(++likeH10);
		});
		$("#tenthHButtonCancel").click(function(){ //싫어요 취소
			$("#countH10").text(--likeH10);
		});
		
		$("#eleventhButton").click(function(){//좋아요
			$("#count11").text(++like11);
		});
		$("#eleventhButtonCancel").click(function(){ //좋아요 취소
			$("#count11").text(--like11);
		});
		$("#eleventhHButton").click(function(){ //싫어요
			$("#countH11").text(++likeH11);
		});
		$("#eleventhHButtonCancel").click(function(){ //싫어요 취소
			$("#countH11").text(--likeH11);
		});
		
		
		$("#twelfthButton").click(function(){//좋아요
			$("#count12").text(++like12);
		});
		$("#twelfthButtonCancel").click(function(){ //좋아요 취소
			$("#count12").text(--like12);
		});
		$("#twelfthHButton").click(function(){ //싫어요
			$("#countH12").text(++likeH12);
		});
		$("#twelfthHButtonCancel").click(function(){ //싫어요 취소
			$("#countH12").text(--likeH12);
		});
	});
</script>
</head>

<style>
html,body{
	width:100%;
	height:100%;
}
body{

	background:white;
}
div>div{
		width : 300px;
		height : 300px;
		margin-right:10px;
		margin-bottom:170px;
		margin-top:10px;
		text-align:center;
	}
.all{
	width:100%;
	height:100%;
	display:flex;
	flex-wrap:wrap;
	align-items:center;
	justify-content:center;	
	
}
font{
	size:2em;
	color:#BDBDBD;
	font-weight: bold ;
}
</style>
<body>
	<%
		String userID= null;
		if(session.getAttribute("userID") != null){
			userID=(String) session.getAttribute("userID");
		}
	%>
<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">문제선 게시판</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navber-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
				<li class="active"><a href="gallery.jsp">갤러리</a></li>
			</ul>
			<%
				if(userID==null){
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
				
			</ul>
				</li>
			</ul>
			<%
				} else{
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="logoutAction.jsp">로그아웃</a></li>
			</ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class="all">
		<div class="firstDiv">
			<image src="./images/dohunsmile (2).jpg" width="300" height="300" id="image1"></image><br>
			<font face>태어난지 1년 반된 도훈이의 뒷 모습!👶</font><br>
			<button type="button" id="firstButton">👍</button>
			좋아요😍 : <span id="count1">0</span><br><br>
			<button type="button" id="firstHButton">👎</button>
			싫어요💦 : <span id="countH1">0</span><br><br>
			<button type="button" id="firstButtonCancel">좋아요취소</button>
			<button type="button" id="firstHButtonCancel">싫어요취소</button>
			<hr><hr>
		</div>
		
		<div class="SecondDiv">
			<image src="./images/nimo.jpg" width="300" height="300" id="image2"></image><br>
			<font>귀여운 니모의 모습🐠</font><br>
			<button type="button" id="SecondButton">👍</button>
			좋아요😍 : <span id="count2">0</span><br><br>
			<button type="button" id="secondHButton">👎</button>
			싫어요💦 : <span id="countH2">0</span><br><br>
			<button type="button" id="secondButtonCancel">좋아요취소</button>
			<button type="button" id="secondHButtonCancel">싫어요취소</button>
			<hr><hr>
		</div>
		
		<div class="thirdDiv">
			<image src="./images/chungok.jpg" width="300" height="300" id="image3"></image><br>
			<font>문제선의 식물 청옥☘이다!☘</font><br>
			<button type="button" id="thirdButton">👍</button>
			좋아요😍 : <span id="count3">0</span><br><br>
			<button type="button" id="thirdHButton">👎</button>
			싫어요💦 : <span id="countH3">0</span><br><br>
			<button type="button" id="thirdButtonCancel">좋아요취소</button>
			<button type="button" id="thirdHButtonCancel">싫어요취소</button>
			<hr><hr>
		</div>
		<div class="fourthDiv">
			<image src="./images/bruni.jpg" width="300" height="300" id="image4"></image><br>
			<font>짱오락실에서 뽑은 브루니!🐦 </font><br>
			<button type="button" id="fourthButton">👍</button>
			좋아요😍 : <span id="count4">0</span><br><br>
			<button type="button" id="fourthHButton">👎</button>
			싫어요💦 : <span id="countH4">0</span><br><br>
			<button type="button" id="fourthButtonCancel">좋아요취소</button>
			<button type="button" id="fourthHButtonCancel">싫어요취소</button>
			<hr><hr>
		</div>
		<br>
		<div class="fifthDiv">
			<video src="./images/army.mp4" width="300" height="300" id="video1" controls muted autoplay></video><br>
			<font>(1조-동엽이형)의 행복한 모습이다.💪</font><br>
			<button type="button" id="fifthButton">👍</button>
			좋아요😍 : <span id="count5">0</span><br><br>
			<button type="button" id="fifthHButton">👎</button>
			싫어요💦 : <span id="countH5">0</span><br><br>
			<button type="button" id="fifthButtonCancel">좋아요취소</button>
			<button type="button" id="fifthHButtonCancel">싫어요취소</button>
			<hr><hr>
		</div>
		<div class="sixthDiv">
			<video src="./images/yuran.mp4" width="300" height="300" id="video2" controls muted autoplay></video><br>
			<font>😘유란😍제선😘</font><br>
			<button type="button" id="sixthButton">👍</button>
			좋아요😍 : <span id="count6">0</span><br><br>
			<button type="button" id="sixthHButton">👎</button>
			싫어요💦 : <span id="countH6">0</span><br><br>
			<button type="button" id="sixthButtonCancel">좋아요취소</button>
			<button type="button" id="sixthHButtonCancel">싫어요취소</button>
			<hr><hr>
		</div>
		<div class="seventhDiv">
			<video src="./images/flower.mp4" width="300" height="300" id="video3" controls muted autoplay></video><br>
			<font>상주에서 찍은 꽃무더기🌸</font><br>
			<button type="button" id="seventhButton">👍</button>
			좋아요😍 : <span id="count7">0</span><br><br>
			<button type="button" id="seventhHButton">👎</button>
			싫어요💦 : <span id="countH7">0</span><br><br>
			<button type="button" id="seventhButtonCancel">좋아요취소</button>
			<button type="button" id="seventhHButtonCancel">싫어요취소</button>
			<hr><hr>
		</div>
		<div class="eighthDiv">
			<video src="./images/bobae.mp4" width="300" height="300" id="video4" controls muted autoplay></video><br>
			<font>김수진누나의 물고기 보배와 짬뽕이다.🐳</font><br>
			<button type="button" id="eighthButton">👍</button>
			좋아요😍 : <span id="count8">0</span><br><br>
			<button type="button" id="eigthHButton">👎</button>
			싫어요💦 : <span id="countH8">0</span><br><br>
			<button type="button" id="eigthButtonCancel">좋아요취소</button>
			<button type="button" id="eigthHButtonCancel">싫어요취소</button>
			<hr><hr>
		</div>
		<br>
		<div class="ninthDiv">
			<image src="./images/bok.jpg" width="300" height="300" id="image5"></image><br>
			<font>주짓수고수 이재복(형)을 만나보았다🐡</font><br>
			<button type="button" id="ninthButton">👍</button>
			좋아요😍 : <span id="count9">0</span><br><br>
			<button type="button" id="ninthHButton">👎</button>
			싫어요💦 : <span id="countH9">0</span><br><br>
			<button type="button" id="ninthButtonCancel">좋아요취소</button>
			<button type="button" id="ninthHButtonCancel">싫어요취소</button>
			
			<hr><hr>
		</div>
		<div class="tenthDiv">
			<image src="./images/qr.jpg" width="300" height="300" id="image6"></image><br>
			<font>5시 20분에 잊지말고 찍기!👀</font><br>
			<button type="button" id="tenthButton">👍</button>
			좋아요😍 : <span id="count10">0</span><br><br>
			<button type="button" id="tenthHButton">👎</button>
			싫어요💦 : <span id="countH10">0</span><br><br>
			<button type="button" id="tenthButtonCancel">좋아요취소</button>
			<button type="button" id="tenthHButtonCancel">싫어요취소</button>
			<hr><hr>
		</div>
		<div class="eleventhDiv">
			<image src="./images/tom.jpg" width="300" height="300" id="image7"></image><br>
			<font>톰👀</font><br>
			<button type="button" id="eleventhButton">👍</button>
			좋아요😍 : <span id="count11">0</span><br><br>
			<button type="button" id="eleventhHButton">👎</button>
			싫어요💦 : <span id="countH11">0</span><br><br>
			<button type="button" id="eleventhButtonCancel">좋아요취소</button>
			<button type="button" id="eleventhHButtonCancel">싫어요취소</button>
			<hr><hr>
		</div>
		<div class="twelfthDiv">
			<image src="./images/jerry.jpg" width="300" height="300" id="image8"></image><br>
			<font>제리👀</font><br>
			<button type="button" id="twelfthButton">👍</button>
			좋아요😍 : <span id="count12">0</span><br><br>
			<button type="button" id="twelfthHButton">👎</button>
			싫어요💦 : <span id="countH12">0</span><br><br>
			<button type="button" id="twelfthButtonCancel">좋아요취소</button>
			<button type="button" id="twelfthHButtonCancel">싫어요취소</button>
			<hr><hr>
		</div>
	</div>
	
	

</body>
</html>