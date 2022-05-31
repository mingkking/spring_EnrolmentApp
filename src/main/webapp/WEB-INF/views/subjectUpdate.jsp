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
	<form action="subjectUpdatePro" method="post">
		<table border="1" align="center" style="width: 400px;">
			<tr>
				<th colspan="2">교과목 정보 입력</th>
			</tr>
			<tr>
				<th>교과목 코드</th><td><input type="text" name="id" maxlength="13" required value="${subjectVO.id }" style="width: 95%;"></td>
			</tr>
			<tr>
				<th>과목명</th><td><input type="text" name="name" maxlength="13" required value="${subjectVO.name }" style="width: 95%;"></td>
			</tr>
			<tr>
				<th>학점</th><td><input type="text" name="credit" maxlength="1" required value="${subjectVO.credit }" style="width: 95%;"></td>
			</tr>
			<tr>
				<th>담당 강사</th>
				<td>
					<select name="lecturer" style="width: 95%;">
					<c:if test="${lecturerVOList != null }">
						<c:forEach var="i" begin="0" end="${lecturerVOList.size()-1 }">
							<c:choose>
								<c:when test="${subjectVO.lecturer eq lecturerVOList.get(i).name}">
									<option value="${lecturerVOList.get(i).idx }" selected>${lecturerVOList.get(i).name }</option>
								</c:when>
								<c:otherwise>
									<option value="${lecturerVOList.get(i).idx }">${lecturerVOList.get(i).name }</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</c:if>
					</select>
				</td>
			</tr>
			<tr>
				<th>요일</th>
				<td>
					<c:choose >
						<c:when test="${subjectVO.week == 1 }"> 
							<input type="radio" name="week" value="1" checked>월
							<input type="radio" name="week" value="2">화
							<input type="radio" name="week" value="3">수
							<input type="radio" name="week" value="4">목
							<input type="radio" name="week" value="5">금
							<input type="radio" name="week" value="6">토
						</c:when>
						<c:when test="${subjectVO.week == 2 }"> 
							<input type="radio" name="week" value="1">월
							<input type="radio" name="week" value="2" checked>화
							<input type="radio" name="week" value="3">수
							<input type="radio" name="week" value="4">목
							<input type="radio" name="week" value="5">금
							<input type="radio" name="week" value="6">토
						</c:when>
						<c:when test="${subjectVO.week == 3 }"> 
							<input type="radio" name="week" value="1" >월
							<input type="radio" name="week" value="2">화
							<input type="radio" name="week" value="3" checked>수
							<input type="radio" name="week" value="4">목
							<input type="radio" name="week" value="5">금
							<input type="radio" name="week" value="6">토
						</c:when>
						<c:when test="${subjectVO.week == 4 }"> 
							<input type="radio" name="week" value="1">월
							<input type="radio" name="week" value="2">화
							<input type="radio" name="week" value="3">수
							<input type="radio" name="week" value="4" checked>목
							<input type="radio" name="week" value="5">금
							<input type="radio" name="week" value="6">토
						</c:when>
						<c:when test="${subjectVO.week == 5 }"> 
							<input type="radio" name="week" value="1">월
							<input type="radio" name="week" value="2">화
							<input type="radio" name="week" value="3">수
							<input type="radio" name="week" value="4">목
							<input type="radio" name="week" value="5" checked>금
							<input type="radio" name="week" value="6">토
						</c:when>
						<c:when test="${subjectVO.week == 6 }"> 
							<input type="radio" name="week" value="1">월
							<input type="radio" name="week" value="2">화
							<input type="radio" name="week" value="3">수
							<input type="radio" name="week" value="4">목
							<input type="radio" name="week" value="5">금
							<input type="radio" name="week" value="6" checked>토
						</c:when>
					</c:choose>
				</td>
			</tr>
			<tr>
				<th>시작</th><td><input type="text" name="startHour" maxlength="4" required value="${subjectVO.startHour }" style="width: 95%;"></td>
			</tr>
			<tr>
				<th>종료</th><td><input type="text" name="endHour" maxlength="4" required value="${subjectVO.endHour }" style="width: 95%;"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="hidden" name="beforeId" value="${subjectVO.id }">
					<input type="submit" value="과목수정">
				</td>
			</tr>
		</table>
	</form>
<c:import url="/WEB-INF/views/bottom.jsp"></c:import>
</body>
</html>