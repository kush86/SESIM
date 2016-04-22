<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%-- edit user Type modal --%>
<c:if test="${currentCategory != null}">
    <div class="modal-header">
        <button type="button" class="close"
                onclick="document.location.href='<c:url value="/users-manager/categories"/>'">
            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
        </button>

        <h4 class="modal-title" id="changeUserStateModalLabel">
            Edit User Type
        </h4>
    </div>
    <div class="modal-body">

        <%--<c:if test="${msg != null}">--%>
            <%--<div class="alert alert-${css} alert-dismissible" role="alert">--%>
                <%--<button type="button" class="close" data-dismiss="alert">--%>
                    <%--<span aria-hidden="true">&times;</span>--%>
                    <%--<span class="sr-only">Close</span>--%>
                <%--</button>--%>
                <%--<strong> ${msg} </strong>--%>
            <%--</div>--%>
        <%--</c:if>--%>

        <form:form class="form-horizontal" action="/users-manager/update/category" modelAttribute="currentCategory"
                   method="POST"
                   name="catgoryEditForm" id="catgoryEditForm">
            <fieldset>

                <form:hidden path="id" value="${currentCategory.id}"/>
                <div class="form-group">
                    <label class="col-sm-3">Category Name</label>

                    <div class="col-sm-9">
                        <form:input id="inputCategoryName" path="name"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3">
                        Permissions
                    </label>

                    <div class="col-sm-9">
                        <form:checkboxes element="div" path="permissionList" items="${permissions}"
                                         itemLabel="name" itemValue="id"/>
                    </div>
                </div>

                <button type="submit" hidden="true" id="updateButton"/>
            </fieldset>
        </form:form>

    </div>
    <div class="modal-footer">

        <c:choose>
            <c:when test="${currentCategory.id == 0}">
                <button type="button" class="btn btn-default"
                        onclick="document.getElementById('updateButton').click();">
                    Create
                </button>
            </c:when>
            <c:otherwise>
                <button type="button" class="btn btn-default"
                        onclick="document.getElementById('updateButton').click();">
                    Update
                </button>
            </c:otherwise>
        </c:choose>


        <button class="btn btn-default"
                onclick="document.location.href='<c:url value="/users-manager/categories"/>'">
            Close
        </button>
    </div>

</c:if>
<%--end of create user modal--%>