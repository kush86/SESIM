<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:if test="${currentUser != null}">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">
                ${currentUser.name}
        </h4>
    </div>
    <div class="modal-body">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-offset-1 col-md-8">

                    <p><strong>Role: </strong> ${currentUser.userCategory.name} </p>

                    <p><strong>E-mail: </strong> ${currentUser.email} </p>

                    <br/>
                    <%--<a href="#" class="btn .btn-info">Change password</a>--%>

                    <%--<a class="btn btn-sm btn-info" aria-hidden="true"--%>
                       <%--data-user-id="${user.id}"--%>
                       <%--data-toggle='modal'--%>
                       <%--data-target='#changeUserPasswordModal'>--%>
                        <%--<i class="glyphicon glyphicon-lock"></i>--%>
                    <%--</a>--%>
                </div>

            </div>
        </div>
    </div>

    <%--</div>--%>
    <%--</div>--%>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    </div>

    <%--<jsp:include page="changeUserPasswordModal.jsp"/>--%>

    <%--<script type="text/javascript">--%>

        <%--/*change password modal controller */--%>
        <%--$('#changeUserPasswordModal').on('show.bs.modal', function (event) {--%>
            <%--var button = $(event.relatedTarget); // Button that triggered the modal--%>
            <%--var userId = button.data('user-id'); // Extract info from data-* attributes--%>

            <%--var modal = $(this);--%>
            <%--modal.find('#editUserId').val(userId); //set values--%>
        <%--});--%>

    <%--</script>--%>

</c:if>
<%--end of create user modal--%>