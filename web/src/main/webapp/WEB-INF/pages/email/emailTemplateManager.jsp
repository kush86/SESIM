<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="hms" tagdir="/WEB-INF/tags" %>

<%--
  Created by IntelliJ IDEA.
  User: kusala
  Date: 10/2/15
  Time: 9:58 AM
  To change this template use File | Settings | File Templates.
--%>

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
               <h4>Email Templates</h4>
           </div>
           <div id="top-right" class="col-md-6 text-right">
               <a class="btn btn-default btn-hms-theme"
                  href="#" data-toggle="modal" data-target="#uploadEmailTemplateModal">
                   Add Email Template
               </a>
           </div>
       </div>
                <hr>
    </jsp:attribute>

    <jsp:attribute name="page_body">
        <c:if test="${msg != null}">
            <div class="alert alert-${css} alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <strong> ${msg} </strong>
            </div>
        </c:if>

 <div id="table-row" class="row">

     <div id="table-col" class="col-md-12">

         <table id="campaign-table"
                data-toggle="table"
                data-striped="true"
                data-pagination="true"
                data-sort-order="desc"
                data-search="true"
                data-show-columns="true"
                data-row-style="rowStyle">

             <thead>
             <tr>
                 <th data-field="name" data-sortable="true">
                     Template Name
                 </th>
                 <th data-field="type" data-sortable="true">
                     path
                 </th>
             </tr>
             </thead>

             <tbody>
             <c:forEach items="${templates}" var="template" varStatus="ulist">
                 <tr>
                     <td><c:out value="${template.name}"/></td>
                     <td><c:out value="${template.path}"/></td>
                 </tr>
             </c:forEach>
             </tbody>
         </table>
     </div>
 </div>
    </jsp:attribute>
    <jsp:attribute name="after_page_body">
        <jsp:include page="templateUpload.jsp"></jsp:include>
    </jsp:attribute>
</hms:twrapper>