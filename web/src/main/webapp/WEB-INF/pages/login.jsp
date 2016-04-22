<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login Page</title>
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
</head>

<body>
<div class="row">
    <div class="container">
        <div class="col-md-6"><img src="<c:url value="/images/cc-home-image.jpg"/>" width="400" height="290"></div>

        <div class="col-md-6">
            <h2>Login</h2>

            <form class="form-horizontal" role="form" name='loginForm'
                  action="<c:url value='/j_spring_security_check' />" method='POST'>
                <div class="form-group">
                    <%--<label class="control-label col-sm-2" for="email">Username:</label>--%>

                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="email" placeholder="Enter username" name="username">
                    </div>
                </div>
                <div class="form-group">
                    <%--<label class="control-label col-sm-2" for="pwd">Password:</label>--%>

                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="pwd" placeholder="Enter password"
                               name="password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10">
                        <div class="checkbox">
                            <label><input type="checkbox"> Remember me</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10">
                        <button type="submit" class="btn btn-default">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- footer of the page -->
<!-- jQuery -->
<script src="<c:url value="/js/jquery.js" />"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<c:url value="/js/bootstrap.min.js" />"></script>

</body>

</html>