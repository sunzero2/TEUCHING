<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 마이페이지에 넣을거 -->
	<c:forEach items="${ report}" var="r">
		<tbody id="tbody">
			<tr>
				<td id="title"><a
					href="${pageContext.request.contextPath }/report/trainerdetail.do?traid=${r.report_idx}">
						${fn:substring(r.rep_cont, 0, 10) }...</a></td>
				<td>${r.tr_email }</td>
				<td>${r.report_date }</td>
				<c:if test="${r.ans_yn == 'Y' }">
				<td>✔</td>
				</c:if>
				<c:if test="${r.ans_yn == 'N' }">
				<td>✖</td>
				</c:if>
			</tr>
		</tbody>
	</c:forEach>
</body>
</html>