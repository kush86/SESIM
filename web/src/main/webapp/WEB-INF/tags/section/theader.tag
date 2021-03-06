<%@ tag description="Header tag" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ tag import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ tag import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="username" scope="session"
       value="<%=((UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getUsername()%>"/>

<div class="header">
    <button type="button" style="color: #ffffff;z-index: 1031" class="navbar-toggle" data-toggle="collapse"
            data-target=".navbar-collapse"><span class="glyphicon glyphicon-user"></span></button>

    <div class="navbar-collapse collapse navbar-fixed-top navbar-inverse">

        <div class="container-fluid">

            <div class="navbar-header">
                <a class="navbar-brand" href="<c:url value="/home"/>">SE Simulator</a>
            </div>

            <div>
                <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" style="margin-right: 50px"
                     role="navigation">
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
                                <%--<a href="<c:url value="/users-manager/changePasswordModal"/>"--%>
                                <%--data-toggle='modal'--%>
                                <%--data-target='.password-Modal'>--%>
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

<div class="modal fade profile-Modal modal-detail" tabindex="-1" role="dialog" aria-labelledby="viewUserProfileModal">
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







