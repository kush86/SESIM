
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

          <form class="form-horizontal" role="form" action="<c:url value="/se-controller/send"/>"
                method="post">

              <div class="form-group">
                  <label for="campaign-name" class="col-md-3 control-label">Campaign Name</label>

                  <div class="col-md-9">
                      <input type="text" class="form-control" id="campaign-name" name="campaign-name"
                             required="true">
                  </div>
              </div>

              <%--<div class="form-group">--%>
                  <%--<label for="subject" class="col-md-3 control-label">Template</label>--%>

                  <%--<div class="col-md-9">--%>
                      <%--<input type="text" class="form-control" id="subject" name="subject"--%>
                             <%--required="true">--%>
                  <%--</div>--%>
              <%--</div>--%>

              <div class="form-group">
                  <label for="selectUserCategory" class="col-md-3 control-label">Template</label>

                  <div class="col-md-9">
                      <select class="form-control small" id="selectUserCategory" name="user_category"
                              required="true">
                          <option selected disabled value="">Select Template</option>
                          <c:forEach items="${templates}" var="template" varStatus="status">
                              <option value="${template.id}">${template.name}</option>
                          </c:forEach>
                      </select>
                  </div>
              </div>

              <%--<div class="form-group">--%>
                  <%--<label for="message" class="col-md-3 control-label">Message</label>--%>

                  <%--<div class="col-md-9">--%>
                <%--<textarea type="text" class="form-control" id="message" name="message"--%>
                          <%--required="true"></textarea>--%>
                  <%--</div>--%>
              <%--</div>--%>


              <%--<div class="form-group">--%>
                  <%--<div class="col-md-6">--%>
                      <%--<a href="<c:url value="/se-controller/phished"/>" class="btn btn-info" role="button">Phished</a>--%>
                  <%--</div>--%>
                  <%--&lt;%&ndash;<div class="col-sm-offset-2 col-md-9">&ndash;%&gt;--%>
                  <%--<div class="col-md-6">--%>
                      <%--<button type="submit" class="btn btn-primary">Send</button>--%>
                  <%--</div>--%>
              <%--</div>--%>
          </form>

    </jsp:attribute>




</hms:twrapper>