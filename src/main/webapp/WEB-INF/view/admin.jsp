<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/template/taglib.jsp"%>
<html>
<head>

<!-- Include main css  -->
<%@ include file="/WEB-INF/template/css.jsp"%>
<link href="<c:url value="/resources/navbar.css" />" rel="stylesheet">
<title><spring:message code="label.pages.home.title" /></title>

</head>
<body>
	<!-- Static navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><spring:message code="project.name" /></a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						Administrasi <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">DATA SEKOLAH</a></li>
							
							<li role="separator" class="divider"></li>
							<li><a href="#">Data Mata Pelajaran</a></li>
							<li><a href="#">Data Guru</a></li>
							<li><a href="#">Data Siswa</a></li>
							<li><a href='<spring:url value="/admin/user" />'>Data User</a></li>
							
							<li role="separator" class="divider"></li>
							<li class="dropdown-header">Laporan</li>

						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<%-- <li><spring:message code="app.pref"/></li> --%>
					<li>
						<a href="<c:url value="/j_spring_security_logout" />">
							<span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;<spring:message code="label.pages.logout" />
						</a>
					</li>
				</ul>
			</div> <!--.nav-collapse -->
		</div> <!--..container -->
	</nav>

	<div class="container">
	
		<!-- Main component for a primary marketing message or call to action -->
		<div class="jumbotron">
			<h1>Navbar example</h1>
			<p>This example is a quick exercise to illustrate how the default, static navbar and fixed to top navbar work. It includes the responsive CSS
				and HTML, so it also adapts to your viewport and device.</p>
			<p>
				<a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
			</p>
		</div>

		<sec:authorize ifNotGranted="WRITE_PRIVILEGE">
			<spring:message code="message.unauth" />
		</sec:authorize>
		<sec:authorize ifAnyGranted="WRITE_PRIVILEGE">
			<h1><spring:message code="label.pages.admin.message" /></h1>
		</sec:authorize>
	</div>

	<!-- Include Footer -->
    <%@ include file="/WEB-INF/template/footer.jsp" %>

	<!-- Include main javascript file -->
	<%@ include file="/WEB-INF/template/js.jsp" %>
</body>
</html>