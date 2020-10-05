<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		String userID = null; //이미 로그인한 사람은 회원가입 불가능
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	if (userID == null) { //이미 로그인한 사람은 로그인불가
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요합니다.')");
		script.println("location.href='login.jsp'");
		script.println("</script>");
	} 
	
	int bbsID=0; //글의 번호
	if(request.getParameter("bbsID") != null){
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if(bbsID == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href='bbs.jsp'");
		script.println("</script>");
	}
	Bbs bbs= new BbsDAO().getBbs(bbsID); //본인의 글이 맞는지 
	if(!userID.equals(bbs.getUserID())){ //확인할수있다.
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다.')");
		script.println("location.href='bbs.jsp'");
		script.println("</script>");
	} else {
		if (request.getParameter("bbsTitle") == null || request.getParameter("bbsContent") == null ||
				request.getParameter("bbsTitle").equals("") || request.getParameter("bbsContent").equals("")	) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("<alert('모든 사항을 입력해주시오')>");
			script.println("history.back()");
			script.println("</script>");
		} 
		else {
			BbsDAO bbsDAO = new BbsDAO();
			int result = bbsDAO.update(bbsID, request.getParameter("bbsTitle"), request.getParameter("bbsContent"));
			if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("<alert('글 수정에 실패했습니다.')>");
			script.println("history.back()");
			script.println("</script>");
			} 
			
			else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href='bbs.jsp'");
			script.println("</script>");
			}
		}
	}
	%>
</body>
</html>