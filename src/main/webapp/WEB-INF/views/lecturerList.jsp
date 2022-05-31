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
		<table border="1" align="center" style="width: 1380px;">
			<tr>
				<th colspan="5">총 ${cnt } 분의 강사님이 있습니다.</th>
			</tr>
			<tr>
				<th>번호</th>
				<th>강사명</th>
				<th>전공</th>
				<th>세부전공</th>
				<th>관리</th>
			</tr>
			<c:if test="${lecturerVOList != null }">
				<c:forEach var="i" begin="0" end="${lecturerVOList.size()-1 }">
					<tr>
						<td>${lecturerVOList.get(i).idx }</td>
						<td>${lecturerVOList.get(i).name }</td>
						<td>${lecturerVOList.get(i).major }</td>
						<td>${lecturerVOList.get(i).field }</td>
						<td>
							<input type="button" value="삭제" onclick="location.href='lecturerDeletePro?idx=${lecturerVOList.get(i).idx }'">
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<tr>
				<td colspan="5" align="center"><input type="button" value="강사님 추가" onclick="location.href='lecturerAdd'"></td>
			</tr>
		</table>
<c:import url="/WEB-INF/views/bottom.jsp"></c:import>
</body>
</html>