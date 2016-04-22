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

<%@ tag description="Header tag" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ tag import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ tag import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="username" scope="session"
       value="<%=((UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getUsername()%>"/>

<div class="header">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <!-- Logo -->
                <div class="logo">
                    <h1><a href="<c:url value="/home"></c:url> ">SE Simulator</a></h1>
                </div>
            </div>

            <div class="col-md-6">
                <div class="navbar navbar-inverse" role="banner">
                    <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">${username}<b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu animated fadeInUp">
                                    <li><a href="<c:url value="/users-manager/profile"/>"
                                           data-toggle='modal'
                                           data-target='.profile-Modal'>
                                        <span class="glyphicon glyphicon-user"></span>
                                        Profile
                                    </a></li>
                                    <%--<li>--%>
                                        <%--<a data-user-id="${user.id}"--%>
                                           <%--data-toggle='modal'--%>
                                           <%--data-target='#changeUserPasswordModal'--%>
                                           <%--data-tooltip="true" title="Change password">--%>
                                            <%--<i class="glyphicon glyphicon-lock"></i>--%>
                                            <%--Change Password--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <li>
                                        <a href="<c:url value="/j_spring_security_logout"/>">
                                            <span class="glyphicon glyphicon-off"></span>
                                            Logout
                                        </a>
                                    </li>
                                </ul>
                            </li>

                       </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade profile-Modal" tabindex="-1" role="dialog" aria-labelledby="viewUserProfileModal">
    <div class="modal-dialog">
        <div class="modal-content">
        </div>
    </div>
</div>

<div class="modal fade password-Modal" tabindex="-1" role="dialog" aria-labelledby="changeUserPasswordModal">
    <div class="modal-dialog">
        <div class="modal-content">
        </div>
    </div>
</div>







