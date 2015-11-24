<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <!-- Custom styles for this template -->
<!--     <link href="navbar.css" rel="stylesheet">	 -->

<link href="<c:url value="/resources/navbar.css" />"
	rel="stylesheet">
	
<title><spring:message code="label.pages.home.title"></spring:message></title>
</head>
<body>
 <div class="container">

      <!-- Static navbar -->
      <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><spring:message code="project.name"></spring:message></a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">Home</a></li>
<!--               <li><a href="#">About</a></li> -->
<!--               <li><a href="#">Contact</a></li> -->
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Administrasi <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">DATA SEKOLAH</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="#">Data Mata Pelajaran</a></li>
                  <li><a href="#">Data Guru</a></li>
                  <li><a href="#">Data Siswa</a></li>
                  <li role="separator" class="divider"></li>
                  <li class="dropdown-header">Laporan</li>
                 
                </ul>
              </li>
            </ul>
             <ul class="nav navbar-nav navbar-right">
<%--              	<li><spring:message code="app.pref"/></li> --%>
		        <li><a href="<c:url value="/j_spring_security_logout" />"><span class="glyphicon glyphicon-log-out" aria-hidden="true"> </span> <spring:message code="label.pages.logout"></spring:message></a> </li>
		      </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>Navbar example</h1>
        <p>This example is a quick exercise to illustrate how the default, static navbar and fixed to top navbar work. It includes the responsive CSS and HTML, so it also adapts to your viewport and device.</p>
        <p>
          <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
        </p>
      </div>

    </div> <!-- /container -->




	<div class="container">
		<sec:authorize ifNotGranted="WRITE_PRIVILEGE">
			<spring:message code="message.unauth"></spring:message>
		</sec:authorize>
		<sec:authorize ifAnyGranted="WRITE_PRIVILEGE">
			<h1>
				<spring:message code="label.pages.admin.message"></spring:message>
			</h1>
		</sec:authorize>
	</div>	
	
	 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!--     <script src="../../dist/js/bootstrap.min.js"></script> -->
    
    <script
		src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
		
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="/resources/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>