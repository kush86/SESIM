<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%-- edit user modal --%>

<div class="modal fade" id="delete-modal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Delete User Type</h4>
            </div>
            <div class="modal-body">

                <input type="text" hidden="true" id="category-id" name="categoryId"/>

                Are you sure you want to delete User Type?

            </div>
            <div class="modal-footer">
                <button class="btn btn-default"
                        onclick="document.location.href='<c:url value="/users-manager/delete/category"/>'">
                    OK
                </button>
                <button class="btn btn-default"
                        onclick="document.location.href='<c:url value="/users-manager/categories"/>'">
                    Close
                </button>
            </div>
        </div>

    </div>
</div>
