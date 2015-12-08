<!-- Include taglib file -->
<%@ include file="/WEB-INF/template/taglib.jsp" %>

<fmt:setBundle basename="messages" />
<fmt:message key="message.password" var="noPass" />
<fmt:message key="message.username" var="noUser" />

<html>

<head>

	<!-- Include main css  -->
	<%@ include file="/WEB-INF/template/css.jsp" %>
	
	<link rel="stylesheet" href='<spring:url value="resources/css/login.css" />'>
	<title><spring:message code="label.pages.login" /></title>
</head>

<body>

    <div class="container">
        <div class="row">
        	<div class="col-sm-6 col-md-4 col-md-offset-4">
	       		<img class="center-block" class="img-circle" alt="Logo" src='<spring:url value="resources/images/logo.png" />'>
            	<h1 class="text-center login-title"><spring:message code="label.form.loginTitle" /></h1>
	            
	            <div class="account-wall">
	            	<c:if test="${param.error != null}">
					    <c:choose>
					        <c:when
					            test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'User is disabled'}">
					            <div class="alert alert-danger">
					                <spring:message code="auth.message.disabled" />
					            </div>
					        </c:when>
					        <c:when
					            test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'User account has expired'}">
					            <div class="alert alert-danger">
					                <spring:message code="auth.message.expired" />
					            </div>
					        </c:when>
					        <c:when
					            test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'blocked'}">
					            <div class="alert alert-danger">
					               <spring:message code="auth.message.blocked" />
					            </div>
					        </c:when>
					        <c:otherwise>
					            <div class="alert alert-danger">
					            <!-- <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/> -->
					                <spring:message code="message.badCredentials" />
					            </div>
					        </c:otherwise>
					    </c:choose>
					</c:if>
		            
					<c:if test="${param.message != null}">
						<div class="alert alert-info">${param.message}</div>
					</c:if>
					
	            	<img class="profile-img" alt="User Blank" src='<spring:url value="resources/images/user-blank.jpg" />'>
	            	
		            <form class="form-signin" name='f' action="j_spring_security_check" method='POST' onsubmit="return validate();">
		                
						<input class="form-control" type='text' name='j_username' placeholder='<spring:message code="label.form.loginEmail" />' required autofocus>		                
						<input class="form-control" type='password' name='j_password' placeholder='<spring:message code="label.form.loginPass" />' required>						
						
						<button class="btn btn-lg btn-primary btn-block" type="submit"><spring:message code="label.form.loginSignIn"/></button>
						<a class="pull-right need-help" href='<c:url value="/forgetPassword.html" />'><spring:message code="message.resetPassword" />&nbsp;</a><span class="clearfix"></span>
						
		            </form>
		            
	            </div>
		   		<a class="text-center new-account" href='<c:url value="registration.html" />'><spring:message code="label.form.loginSignUp" /></a>
            </div>
        </div>
        
    </div>
    
    <!-- Include Footer -->
    <%@ include file="/WEB-INF/template/footer.jsp" %>

	<!-- Include main javascript file -->
	<%@ include file="/WEB-INF/template/js.jsp" %>
</body>

<script type="text/javascript">
    function validate() {
        if (document.f.j_username.value == "" && document.f.j_password.value == "") {
            alert("${noUser} & ${noPass}");
            document.f.j_username.focus();
            return false;
        }
        if (document.f.j_username.value == "") {
            alert("${noUser}");
            document.f.j_username.focus();
            return false;
        }
        if (document.f.j_password.value == "") {
            alert("${noPass}");
            document.f.j_password.focus();
            return false;
        }
    }
</script>
</html>