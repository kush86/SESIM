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
        <%--<link href="<c:url value="/css/bootstrap-table.css" />" rel="stylesheet">--%>
        <%--<link href="<c:url value="/css/daterangepicker.css" />" rel="stylesheet">--%>
    </jsp:attribute>

    <jsp:attribute name="js_file_includes">
    <%--<script src="<c:url value="/js/jquery-ui.min.js" />"></script>--%>
        <%--<script src="<c:url value="/js/moment.min.js" />"></script>--%>
        <%--<script src="<c:url value="/js/daterangepicker.js" />"></script>--%>
    </jsp:attribute>

    <jsp:attribute name="page_heading">
        <div>
            <h4>Edit campaign</h4>
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

          <form:form class="form-horizontal" action="/se-sim/se-controller/save/sms/campaign"
                     modelAttribute="currentCampaign" method="POST"
                     name="createCampaignForm" id="campaignEditForm">

              <form:hidden path="id" value="${currentCategory.id}"/>

              <div class="form-group">
                  <label for="inputCampName" class="col-md-3 control-label">Name</label>

                  <div class="col-md-9">
                      <form:input type="text" class="form-control input-sm" id="inputCampName" path="name"
                                  required="true"/>
                  </div>
              </div>

              <%--<div class="form-group">--%>
                  <%--<label for="template" class="col-md-3 control-label">Template</label>--%>

                  <%--<div class="col-md-4">--%>
                      <%--<form:select cssClass="form-control" path="template" id="template"--%>
                                   <%--required="true" items="${templates}"/>--%>
                  <%--</div>--%>
              <%--</div>--%>

              <%--<div class="form-group">--%>
                  <%--<label for="subject" class="col-md-3 control-label">Template</label>--%>

                  <%--<div class="col-md-9">--%>
                      <%--<form:input type="text" class="form-control input-sm" id="subject" path="template"--%>
                                  <%--required="true"/>--%>
                  <%--</div>--%>
              <%--</div>--%>

              <div class="form-group required">
                  <label for="template" class="col-md-3 control-label">
                     Template
                  </label>

                  <div class="col-md-9">
                      <form:textarea type="text" class="form-control input-sm" id="template" required="true"
                                     cssStyle="max-width: 100%; min-width: 100%" path="template"
                                     maxlength="500"/>
                  </div>
              </div>

              <div class="form-group">
                  <label for="sender" class="col-md-3 control-label">Sender</label>

                  <div class="col-md-9">
                      <form:input type="text" class="form-control input-sm" id="sender" path="sender"
                                  required="true"/>
                  </div>
              </div>

              <button type="submit" hidden="true" id="saveButton"></button>

              <div class="form-group">
                  <div class="col-sm-offset-2 col-md-9">
                      <button type="submit" class="btn btn-primary">Save</button>
                  </div>
              </div>

          </form:form>

    </jsp:attribute>


</hms:twrapper>