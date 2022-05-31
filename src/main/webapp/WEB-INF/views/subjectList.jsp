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
		<table border="1" align="center" style="width: 1380px; align-self: center;">
			<tr>
				<th colspan="8">총 ${cnt } 개의 교과목이 있습니다.</th>
			</tr>
			<tr>
				<th>과목 id</th>
				<th>과목명</th>
				<th>학점</th>
				<th>강사</th>
				<th>요일</th>
				<th>시작</th>
				<th>종료</th>
				<th>관리</th>
			</tr>
			<c:if test="${subjectVOList != null }">
				<c:forEach var="i" begin="0" end="${subjectVOList.size()-1 }">
					<tr>
						<td>${subjectVOList.get(i).id }</td>
						<td>${subjectVOList.get(i).name }</td>
						<td>${subjectVOList.get(i).credit }</td>
						<td>${subjectVOList.get(i).lecturer }</td>
						<td>
							<c:choose>
								<c:when test="${subjectVOList.get(i).week == 1 }">월</c:when>
								<c:when test="${subjectVOList.get(i).week == 2 }">화</c:when>
								<c:when test="${subjectVOList.get(i).week == 3 }">수</c:when>
								<c:when test="${subjectVOList.get(i).week == 4 }">목</c:when>
								<c:when test="${subjectVOList.get(i).week == 5 }">금</c:when>
								<c:when test="${subjectVOList.get(i).week == 6 }">토</c:when>
							</c:choose>
						</td>
						<td>${subjectVOList.get(i).startHour }</td>
						<td>${subjectVOList.get(i).endHour }</td>
						<td>
							<input type="button" value="수정" onclick="location.href='subjectUpdate?id=${subjectVOList.get(i).id }'">&nbsp/
							<input type="button" value="삭제" onclick="location.href='subjectDeletePro?id=${subjectVOList.get(i).id }'">
						</td>
					</tr>
				</c:forEach>
			</c:if>
			<tr>
				<td colspan="8" align="center"><input type="button" value="과목 추가" onclick="location.href='subjectAdd'"></td>
			</tr>
		</table>
<c:import url="/WEB-INF/views/bottom.jsp"></c:import>
</body>
</html>