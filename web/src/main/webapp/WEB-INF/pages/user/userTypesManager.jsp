<%--
  Created by IntelliJ IDEA.
  User: kusala
  Date: 9/29/15
  Time: 3:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="hms" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<hms:twrapper>

    <jsp:attribute name="js_file_includes">
        <script src="<c:url value="/js/bootstrap-table.js" />"></script>
    </jsp:attribute>

        <jsp:attribute name="css_file_includes">
        <link href="<c:url value="/css/bootstrap-table.css" />" rel="stylesheet">
    </jsp:attribute>


  <jsp:attribute name="page_heading">
                        <div class="row">
                            <div id="top-left" class="col-md-6">
                                <h4>User Types</h4>
                                <h5> <small>Create, edit and manage user types</small></h5>
                            </div>

                            <div id="top-right" class="col-md-6 text-right">
                                <a href="<c:url value="/users-manager/add/category/" />"
                                   class="btn btn-default" data-toggle='modal' data-target=".edit-modal">
                                    Add User Type
                                </a>
                            </div>
                        </div>
                <hr>
  </jsp:attribute>
  <jsp:attribute name="page_body">
                <div id="table-row" class="row">
                    <div id="table-col" class="col-md-12">

                        <c:if test="${msg != null}">
                            <div class="alert alert-${css} alert-dismissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert">
                                    <span aria-hidden="true">&times;</span>
                                    <span class="sr-only">Close</span>
                                </button>
                                <strong> ${msg} </strong>
                            </div>
                        </c:if>

                        <table data-toggle="table"
                               data-striped="true"
                               data-pagination="true"
                               data-sort-name="userType"
                               data-sort-order="desc"
                               data-search="true"
                               data-show-columns="true">

                            <thead>
                            <tr>
                                <th data-field="name" data-sortable="true">User Type</th>
                                <th data-field="permission">Permissions</th>
                                <th data-field="action">Action</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${userCategories}" var="category" varStatus="ulist">
                                <tr>
                                    <td><c:out value="${category.name}"/></td>
                                    <td>
                                        <ul>
                                            <c:forEach items="${category.permissionList}" var="permission">
                                                <li>${permission.name}</li>
                                            </c:forEach>
                                        </ul>
                                    </td>
                                    <td>
                                        <a class="btn btn-default"
                                           href="<c:url value="/users-manager/edit/category/${category.id}" />"
                                           data-toggle='modal' data-target='.edit-modal'
                                           data-tooltip="true" title="Edit">
                                            <i class="glyphicon glyphicon-edit"></i>
                                        </a>
                                    </td>

                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
  </jsp:attribute>

    <jsp:attribute name="after_page_body">

                <div class="modal fade edit-modal" tabindex="-1" role="dialog"
                     aria-labelledby="changeUserStateModalLabel">
                    <div class="modal-dialog cc-permission-modal-sm">
                        <div class="modal-content">
                        </div>
                    </div>
                </div>

    </jsp:attribute>

</hms:twrapper>