<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%-- create user modal --%>

<div id="createUserModal" class="modal fade editUserModel" role="dialog" id="myModal">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Create User</h4>
            </div>
            <div class="modal-body">

                <form class="form-horizontal" role="form" action="<c:url value="/users-manager/create/user"/>"
                      method="post">

                    <div class="form-group">
                        <label for="inputName" class="col-md-3 control-label">Name</label>

                        <div class="col-sm-9">
                            <input type="text" class="form-control input-sm" id="inputName" name="user_name"
                                   required="true">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputName" class="col-md-3 control-label">E-mail</label>

                        <div class="col-sm-9">
                            <input type="email" class="form-control input-sm" id="inputEmail" name="email"
                                   required="true">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="msisdn" class="col-md-3 control-label">Phone No</label>

                        <div class="col-sm-9">
                            <input type="text" class="form-control input-sm" id="msisdn" name="msisdn"
                                   required="true">
                        </div>
                    </div>

                    <button type="submit" hidden="true" id="saveButton"></button>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        onclick="document.getElementById('saveButton').click();">
                    Save
                </button>
                <button type="button" class="btn btn-default]" data-dismiss="modal">
                    Close
                </button>
            </div>
        </div>
    </div>
</div>
<%--end of create user modal--%>