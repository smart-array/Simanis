<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title><spring:message code="label.pages.home.title"></spring:message></title>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><spring:message code="label.pages.home.title"></spring:message></a>
      
    </div>
<!--     <ul class="nav navbar-nav"> -->
<!--             <li class="active"><a href="#">Home</a></li> -->
<!--             <li><a href="#about">About</a></li> -->
<!--             <li><a href="#contact">Contact</a></li> -->
<!--             <li class="dropdown"> -->
<!--               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a> -->
<!--               <ul class="dropdown-menu"> -->
<!--                 <li><a href="#">Action</a></li> -->
<!--                 <li><a href="#">Another action</a></li> -->
<!--                 <li><a href="#">Something else here</a></li> -->
<!--                 <li role="separator" class="divider"></li> -->
<!--                 <li class="dropdown-header">Nav header</li> -->
<!--                 <li><a href="#">Separated link</a></li> -->
<!--                 <li><a href="#">One more separated link</a></li> -->
<!--               </ul> -->
<!--             </li> -->
<!--           </ul> -->
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<c:url value="/j_spring_security_logout" />"><spring:message code="label.pages.logout"></spring:message></a> </li>
      </ul>
    </div>
</nav>
    <div class="container">
            <h1>
                <spring:message code="label.pages.home.message"></spring:message>
            </h1>
    </div>
</body>

</html>

