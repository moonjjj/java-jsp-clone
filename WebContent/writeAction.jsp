<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />
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
	} else {
		if (bbs.getBbsTitle() == null || bbs.getBbsContent() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("<alert('모든 사항을 입력해주시오')>");
			script.println("history.back()");
			script.println("</script>");
		} 
		else {
			BbsDAO bbsDAO = new BbsDAO();
			int result = bbsDAO.write(bbs.getBbsTitle(), userID, bbs.getBbsContent());
			if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("<alert('글쓰기에 실패했습니다.')>");
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