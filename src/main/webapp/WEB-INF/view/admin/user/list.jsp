<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/template/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>

<!-- Include main css  -->
<%@ include file="/WEB-INF/template/css.jsp"%>
<title><spring:message code="label.pages.home.title" /></title>

</head>
<body>
	<div class="container">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>No.</th>
					<th>Email</th>
					<th>Name</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users }" var="user" varStatus="i">
				<tr>
					<td><c:out value="${i.count }" />.</td>
					<td><c:out value="${user.email }" /> </td>
					<td><c:out value="${user.firstName }" /> <c:out value="${user.lastName }" /></td>
					<td>
						<a href="#" class="btn btn-xs btn-info">Update</a>
						<a href="#" class="btn btn-xs btn-danger">Danger</a>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<!-- Include Footer -->
	<%@ include file="/WEB-INF/template/footer.jsp"%>

	<!-- Include main javascript file -->
	<%@ include file="/WEB-INF/template/js.jsp"%>
</body>
</html>