<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<form:form modelAttribute="u" action="../editok" method="post">
	<form:hidden path="seq"/>
	<table id = "edit">
		<tr><td>카테고리</td><td><input type ="text" name ="category" value=${u.getCategory()}></td></tr>
		<tr><td>제목</td><td><input type ="text" name ="title" value=${u.getTitle()} ></td></tr>
		<tr><td>글쓴이</td><td><input type ="text" name ="writer" value=${u.getWriter()}></td></tr>
		<tr><td>내용</td><td><textarea cols = "50" rows ="5" name = "content" >${u.getContent()}</textarea></td></tr>
		<tr><td colspan="2">
	<input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form:form>


</body>
</html>