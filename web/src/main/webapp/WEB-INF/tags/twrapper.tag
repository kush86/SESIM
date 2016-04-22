<%--
  ~  (C) Copyright 2015 hSenid Mobile Solutions (Pvt) Limited.
  ~  All Rights Reserved.
  ~ <p/>
  ~ These materials are unpublished, proprietary, confidential source code of
  ~ hSenid Mobile Solutions (Pvt) Limited and constitute a TRADE SECRET
  ~ of hSenid Mobile Solutions (Pvt) Limited.
  ~ <p/>
  ~ hSenid Mobile Solutions (Pvt) Limited retains all title to and intellectual
  ~ property rights in these materials.
  ~
  --%>

<%@ tag description="Wrapper tag to use in pages after login" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags/section" %>
<%@ attribute name="page_heading" fragment="true" required="true" %>
<%@ attribute name="page_body" fragment="true" required="true" %>
<%@ attribute name="after_page_body" fragment="true" %>
<%@ attribute name="css_file_includes" fragment="true" %>
<%@ attribute name="css_inline" fragment="true" %>
<%@ attribute name="js_file_includes" fragment="true" %>
<%@ attribute name="js_inline" fragment="true" %>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SMS Promotion Manager</title>

    <link rel="icon" type="image/png" href="<c:url value="/images/favicon.png" />">

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/css/styles.css" />" rel="stylesheet">

    <script src="<c:url value="/js/jquery.min.js" />"></script>
    <script src="<c:url value="/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/js/common.js" />"></script>

    <%-- validation styles--%>

    <style>
        textarea:focus, input:focus{
            outline: 0;
        }

        input:focus:invalid,
        textarea:focus:invalid{
            border:1px solid #F5192F;
            box-shadow:0 0 4px #F5192F;
        }

        input:focus:valid,
        textarea:focus:valid{
            border: 1px solid #64C364;
            box-shadow: 0 0 4px #64C364;
        }
    </style>

    <!-- for css file includes -->
    <jsp:invoke fragment="css_file_includes"/>

    <!-- for style tags -->
    <jsp:invoke fragment="css_inline"/>



</head>
<body>

<t:theader/>

<div class="page-content">
    <div class="row">
        <div class="col-md-2">
            <t:tmenu/>
        </div>

        <div class="col-md-10">
            <div class="row">
                <%--Content title--%>
                <div class="col-md-12">
                    <div class="content-box-large">
                        <div class="panel-body">
                            <%--<h5>--%>
                            <jsp:invoke fragment="page_heading"/>
                            <%--</h5>--%>
                            <!-- Body content-->
                            <jsp:invoke fragment="page_body"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- can used to include things like modals, etc -->
<jsp:invoke fragment="after_page_body"/>

<!-- footer of the page -->
<tt:footer/>

<!-- for js file includes -->
<jsp:invoke fragment="js_file_includes"/>

<!-- for script tags -->
<jsp:invoke fragment="js_inline"/>

</body>

</html>