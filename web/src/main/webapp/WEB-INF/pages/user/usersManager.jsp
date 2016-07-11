<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="hms" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<hms:twrapper>

    <jsp:attribute name="css_file_includes">
        <link href="<c:url value="/css/bootstrap-table.css" />" rel="stylesheet">
    </jsp:attribute>

    <jsp:attribute name="js_file_includes">
        <script src="<c:url value="/js/bootstrap-table.js" />"></script>
    </jsp:attribute>

    <jsp:attribute name="page_heading">
                <div class="row">
                    <div id="top-left" class="col-md-6">
                        <h4>Users</h4>
                        <h5>
                            <small>Create, edit and manage users</small>
                        </h5>
                    </div>

                    <security:authorize access="hasRole('ROLE_EDIT_USERS')">
                        <div id="top-right" class="col-md-6 text-right">
                            <a class="btn btn-default" data-toggle='modal' data-target="#createUserModal">
                                Create User
                            </a>
                            <a class="btn btn-default" data-toggle='modal' data-target="#uploadUserModal">
                          Upload Users from csv
                            </a>
                        </div>
                    </security:authorize>
                </div>
                <hr>
    </jsp:attribute>
    <jsp:attribute name="page_body">

        <div id="table-row" class="row">
            <div id="table-col" class="col-md-12">

                    <%--User Create Success messages --%>
                <c:if test="${msg != null}">
                    <div class="alert alert-${css} alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert">
                            <span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span>
                        </button>
                        <c:if test="${css == 'success'}">
                            <span class="glyphicon glyphicon-saved"></span>
                        </c:if>
                        <c:if test="${css == 'danger'}">
                            <span class="glyphicon glyphicon-warning-sign"></span>
                        </c:if>
                        <strong> ${msg} </strong>
                    </div>
                </c:if>

                <table data-toggle="table"
                       data-striped="true"
                       data-pagination="true"
                       data-sort-name="name"
                       data-sort-order="desc"
                       data-search="true"
                       data-show-columns="false">

                    <thead>
                    <tr>
                        <th data-field="name" data-sortable="true">Name</th>
                        <th data-field="email" data-sortable="true">E-mail</th>
                        <th data-field="role">Role</th>
                        <th data-field="status">Status</th>
                        <security:authorize access="hasRole('ROLE_EDIT_USERS')">
                            <th data-field="action">Action</th>
                        </security:authorize>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach items="${users}" var="user" varStatus="ulist">
                        <tr>
                            <td><c:out value="${user.name}"/></td>
                            <td><c:out value="${user.email}"/></td>
                            <td><c:out value="${user.userCategory.name}"/></td>
                            <td><c:out value="${user.status}"/></td>
                            <security:authorize access="hasRole('ROLE_EDIT_USERS')">
                                <td>
                                    <c:if test="${user.status == 'ACTIVE'}">
                                        <a class="btn btn-xs btn-default"
                                           href="<c:url value="/users-manager/deactivate/user/${user.id}"/>"
                                           data-tooltip="true" title="Deactivate">
                                            <i class="glyphicon glyphicon-ban-circle"></i>
                                        </a>
                                    </c:if>
                                    <c:if test="${user.status == 'INACTIVE'}">
                                        <a class="btn btn-xs btn-default"
                                           href="<c:url value="/users-manager/activate/user/${user.id}"/>"
                                           data-tooltip="true" title="Activate">
                                            <i class="glyphicon glyphicon-check"></i>
                                        </a>
                                    </c:if>

                                    <a class="btn btn-xs btn-default"
                                       data-user-id="${user.id}"
                                       data-user-name="${user.name}"
                                       data-user-email="${user.email}"
                                       data-category-id="${user.userCategory.id}"
                                       data-toggle='modal'
                                       data-target='#editUserModal'
                                       data-tooltip="true" title="Edit user">
                                        <i class="glyphicon glyphicon-edit"></i>
                                    </a>
                                    <a class="btn btn-xs btn-default" aria-hidden="true"
                                       data-user-id="${user.id}"
                                       data-toggle='modal'
                                       data-target='#changeUserPasswordModal'
                                       data-tooltip="true" title="Change password">
                                        <i class="glyphicon glyphicon-lock"></i>
                                    </a>

                                </td>
                            </security:authorize>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </jsp:attribute>

    <jsp:attribute name="after_page_body">
        <jsp:include page="createUserModal.jsp"/>
        <jsp:include page="editUserModal.jsp"/>
        <jsp:include page="changeUserPasswordModal.jsp"/>
        <jsp:include page="uploadUserCsv.jsp"/>
    </jsp:attribute>

    <jsp:attribute name="js_inline">
        <script type="text/javascript">

            /*edit modal controller */
            $('#editUserModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget); // Button that triggered the modal
                var userId = button.data('user-id'); // Extract info from data-* attributes
                var userName = button.data('user-name');
                var email = button.data('user-email');
                var userCategoryId = button.data('category-id');

                var modal = $(this);
                modal.find('#editUserId').val(userId); //set values
                modal.find('#editUserName').val(userName);
                modal.find('#editEmail').val(email);
                modal.find('#editUserCategory').val(userCategoryId);
            });

            /*change password modal controller */
            $('#changeUserPasswordModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget); // Button that triggered the modal
                var userId = button.data('user-id'); // Extract info from data-* attributes

                var modal = $(this);
                modal.find('#editUserId').val(userId); //set values
            });

        </script>
    </jsp:attribute>

</hms:twrapper>