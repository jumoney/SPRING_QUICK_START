<%@ page import="java.util.List" %>
<%@ page import="com.springbook.biz.board.impl.BoardDAO" %>
<%@ page import="com.springbook.biz.board.BoardVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	// 1. 사용자 입력 정보 추출(검색 기능은 나중에 구현)
	// 2. DB 연동 처리
	BoardVO vo = new BoardVO();
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> boardList = boardDAO.getBoardList(vo);
	
	// 3. 응답 화면 구성
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<center>
<h1>로그인</h1>
<hr>
<form action="login_proc.jsp" method="post">
<table border="1" cellpadding="0" cellspacinig="0">
	<tr>
		<td bgcolor="orange">아이디</td>
		<td><input type="text" name="id"/></td>
	</tr>
	<tr>
		<td bgcolor="orange">비밀번호</td>
		<td><input type="password" name="password"/></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="로그인"/>
		</td>
	</tr>

</table>
</form>
 </center>
</body>
</html>