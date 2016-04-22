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

<%--
  Created by IntelliJ IDEA.
  User: kusala
  Date: 10/1/15
  Time: 3:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%-- edit user modal --%>

<div id="changeUserPasswordModal" class="modal fade changeUserPasswordModal" role="dialog" data-backdrop="static">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Change Password</h4>
            </div>
            <div class="modal-body">

                <form class="form-horizontal" role="form" action="<c:url value="/users-manager/change/password"/>"
                      method="post">

                    <input type="text" hidden="true" id="editUserId" name="currentUserId"/>

                    <%--<div class="form-group">--%>
                        <%--<label for="inputOldPassword" class="col-md-3 control-label">Current Password</label>--%>

                        <%--<div class="col-md-9">--%>
                            <%--<input type="password" class="form-control" id="inputOldPassword" name="oldPassword"--%>
                                   <%--required="true">--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <div class="form-group">
                        <label for="inputPassword" class="col-md-3 control-label">New Password</label>

                        <div class="col-md-9">
                            <input type="password" class="form-control" id="inputPassword" name="newPassword"
                                   required="true">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputConfirmPassword" class="col-md-3 control-label">Confirm Password</label>

                        <div class="col-md-9">
                            <input type="password" class="form-control" id="inputConfirmPassword" name="confirmPassword"
                                   required="true">
                        </div>
                    </div>

                    <button type="submit" hidden="true" id="changePasswordButton"/>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        onclick="document.getElementById('changePasswordButton').click();">
                    Change Password
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
            </div>
        </div>
    </div>
</div>
<%--end of create user modal--%>
