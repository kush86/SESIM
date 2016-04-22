<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kusala
  Date: 1/9/16
  Time: 8:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        You're phished
    </title>
    <link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
    <%--<link href="<c:url value="/css/styles.css" />" rel="stylesheet">--%>
</head>
<body>
<div class="row">
    <div class="container" style="text-align: center">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>

        <h2>
            DON'T CLOSE YOUR BROWSER
        </h2>

        <br>

        <h4>This is a phishing awareness training sent by SE-SIM</h4>
        <h4>Your Computer is safe</h4>

        <br>
        <div class="row">
            <div id="d1" class="col-md-4">

            </div>

            <div id="d2" class="col-md-4 text-center">
                <a href="<c:url value="/se-controller/phishing"/>" class="btn-lg btn-info btn-block" role="button">
                    Learn how to detect phishing scams
                </a>
            </div>
            <div id="d3" class="col-md-4 text-right">

            </div>
        </div>
    </div>
</div>

</body>
</html>
