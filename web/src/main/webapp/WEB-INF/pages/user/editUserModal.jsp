<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%-- edit user modal --%>

<div id="editUserModal" class="modal fade editUserModal" role="dialog" id="myModal">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Edit User</h4>
            </div>
            <div class="modal-body">

                <form class="form-horizontal" role="form" action="<c:url value="/users-manager/update/user"/>"
                      method="post">

                    <input type="text" hidden="true" id="editUserId" name="user_id"/>

                    <div class="form-group">
                        <label for="editUserName" class="col-md-3 control-label">Name</label>

                        <div class="col-md-9">
                            <input type="text" class="form-control input-sm" id="editUserName" name="user_name"
                                   required="true">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="editEmail" class="col-md-3 control-label">E-mail</label>

                        <div class="col-md-9">
                            <input type="text" class="form-control input-sm" id="editEmail" name="e_mail"
                                   required="true">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="editUserCategory" class="col-md-3 control-label">User Category</label>

                        <div class="col-md-9">
                            <select class="form-control small" id="editUserCategory" name="user_category" required="true">
                                <c:forEach items="${userCategories}" var="category" varStatus="status">
                                    <option value="${category.id}">${category.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <button type="submit" hidden="true" id="updateButton"/>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        onclick="document.getElementById('updateButton').click();">
                    Update
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
            </div>
        </div>
    </div>
</div>
<%--end of create user modal--%>