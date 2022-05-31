<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청 Application</title>
</head>
<body>
<c:import url="/WEB-INF/views/top.jsp"></c:import>
	<fieldset style="width: 1365px; margin: 0 auto;">
		<h2 align="center">수강신청 도우미 사이트</h2>
	</fieldset>
	<form action="lecturerInsertPro" method="post">
		<table border="1" align="center" style="width: 400px;">
			<tr>
				<th colspan="2">강사 정보 입력</th>
			</tr>
			<tr>
				<th>강사명</th><td><input type="text" name="name" maxlength="3" required style="width: 95%;"></td>
			</tr>
			<tr>
				<th>전공</th><td><input type="text" name="major" maxlength="16" required style="width: 95%;"></td>
			</tr>
			<tr>
				<th>세부전공</th><td><input type="text" name="field" maxlength="16" required style="width: 95%;"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="강사정보 추가"></td>
			</tr>
		</table>
	</form>
<c:import url="/WEB-INF/views/bottom.jsp"></c:import>
</body>
</html>