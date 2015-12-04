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
    </div> <!-- /container -->




	<div class="container">
		<sec:authorize ifNotGranted="WRITE_PRIVILEGE">
			<spring:message code="message.unauth"></spring:message>
		</sec:authorize>
		<sec:authorize ifAnyGranted="WRITE_PRIVILEGE">
			<h2>
				Sekolah List
			</h2>
			
			<table style="text-align: center;" border="1px" cellpadding="0" cellspacing="0" >
				<thead>
				<tr>
				<th width="25px">id</th><th width="150px">nama</th><th width="25px">alamat</th><th width="50px">kepala sekolah</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach var="sekolah" items="${sekolahList}">
				<tr>
				<td>${sekolah.idSekolah}</td>
				<td>${sekolah.namaSekolah}</td>
				<%-- <td>${sekolah.alamatSekolah}</td> --%>
				<%-- <td>${sekolah.kepalaSekolah}</td> --%>
				
				<td>
				<a href="${pageContext.request.contextPath}/sekolah/edit/${sekolah.idSekolah}.html">Edit</a><br/>
				<a href="${pageContext.request.contextPath}/sekolah/delete/${sekolah.idSekolah}.html">Delete</a><br/>
				</td>
				</tr>
				</c:forEach>
				</tbody>
				</table>
			
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