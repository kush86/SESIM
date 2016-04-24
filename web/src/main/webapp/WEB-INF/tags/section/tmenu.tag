<%@ tag description="Navigation tag" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<div class="sidebar panel" style="display: block;">
    <ul class="nav">
        <!-- Main menu -->
        <security:authorize access="hasAnyRole('ROLE_VIEW_USERS', 'ROLE_EDIT_USERS')">

            <li>
                    <%--<a href="#">--%>
                <a href="${pageContext.request.contextPath}/users-manager/">Users</a>
                    <%--<i class="glyphicon glyphicon-list"></i> --%>
                    <%--Users--%>
                    <%--<span class="caret pull-right"></span>--%>
                    <%--</a>--%>
                <!-- Sub menu -->
                    <%--<ul>--%>
                    <%--<li>--%>
                    <%--<a href="${pageContext.request.contextPath}/users-manager/">User Accounts</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="${pageContext.request.contextPath}/users-manager/categories">User Types</a>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
            </li>
        </security:authorize>

        <security:authorize access="hasAnyRole('ROLE_VIEW_CAMPAIGNS', 'ROLE_EDIT_CAMPAIGNS')">
            <li>
                <a href="${pageContext.request.contextPath}/se-controller/email/templates">
                    E-mail templates
                </a>
            </li>
        </security:authorize>

        <security:authorize access="hasAnyRole('ROLE_VIEW_CAMPAIGNS', 'ROLE_EDIT_CAMPAIGNS')">
            <li>
                <a href="${pageContext.request.contextPath}/se-controller/">
                    SMS templates
                </a>
            </li>
        </security:authorize>

        <security:authorize access="hasAnyRole('ROLE_VIEW_CAMPAIGNS', 'ROLE_EDIT_CAMPAIGNS')">
            <%--<li>--%>
            <%--<a href="${pageContext.request.contextPath}/se-controller/campaigns">--%>
            <%--Campaigns--%>
            <%--</a>--%>
            <%--</li>--%>

            <li class="submenu">
                <a href="#">
                    Campaigns
                    <span class="caret pull-right"></span>
                </a>
                <!-- Sub menu -->
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/se-controller/campaigns">Email Campaigns</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/se-controller/sms/campaigns">SMS Campaigns</a>
                    </li>
                </ul>
            </li>


        </security:authorize>
    </ul>

    <script type="text/javascript">

        //Function for displaying sub menu items in the side menu bar
        $(document).ready(function () {

            $(".submenu > a").click(function (e) {
                e.preventDefault();
                var $li = $(this).parent("li");
                var $ul = $(this).next("ul");

                if ($li.hasClass("open")) {
                    $ul.slideUp(350);
                    $li.removeClass("open");
                } else {
                    $(".nav > li > ul").slideUp(350);
                    $(".nav > li").removeClass("open");
                    $ul.slideDown(350);
                    $li.addClass("open");
                }
            });
        });
    </script>


</div>



