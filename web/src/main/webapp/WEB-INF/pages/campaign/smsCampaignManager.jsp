<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="hms" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<hms:twrapper>

    <jsp:attribute name="css_file_includes">
        <link href="<c:url value="/css/bootstrap-table.css" />" rel="stylesheet">
    </jsp:attribute>

    <jsp:attribute name="js_file_includes">
        <script src="<c:url value="/js/moment-datepicker.js" />"></script>
        <script src="<c:url value="/js/bootstrap-datetimepicker.min.js" />"></script>
        <script src="<c:url value="/js/bootstrap-table.js" />"></script>
    </jsp:attribute>

    <jsp:attribute name="page_heading">
                <div class="row">
                    <div id="top-left" class="col-md-6">
                        <h4>Campaigns</h4>
                        <h5>
                            <small>Create, edit and manage phishing campaigns</small>
                        </h5>
                    </div>

                    <div id="top-right" class="col-md-6 text-right">
                        <a class="btn btn-default"
                           href="<c:url value="/se-controller/create/sms/campaign"/>">
                            Create Campaign
                        </a>
                    </div>
                </div>
                <hr>
    </jsp:attribute>
    <jsp:attribute name="page_body">

        <div id="table-row" class="row">

            <div id="table-col" class="col-md-12">

                    <%-- Campaign management messages --%>
                <c:if test="${msg != null}">
                    <div class="alert alert-${css} alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert">
                            <span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span>
                        </button>
                        <strong> ${msg} </strong>
                    </div>
                </c:if>


                <table id="campaign-table"
                       data-toggle="table"
                       data-striped="true"
                       data-pagination="true"
                       data-sort-name="name"
                       data-sort-order="desc"
                       data-search="true"
                       data-show-columns="true">

                    <thead>
                    <tr>
                        <th data-field="name" data-sortable="true">Name</th>
                        <th data-field="template" data-sortable="true">Sender</th>

                        <th data-field="action">Action</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach items="${campaigns}" var="campaign" varStatus="ulist">
                        <tr>

                            <td><c:out value="${campaign.name}"/></td>
                            <td><c:out value="${campaign.sender}"/></td>

                            <td>
                                    <%--<c:if test="${campaign.status == 'SCHEDULED' || campaign.status == 'PAUSED'}">--%>
                                <a class="btn btn-xs btn-default" aria-hidden="true"
                                   href="<c:url value="/se-controller/run/sms/${campaign.id}"/>"

                                   data-tooltip="true" title="run">
                                    <i class="glyphicon glyphicon-play"></i>
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

        <div class="modal fade view-modal" tabindex="-1" role="dialog"
             aria-labelledby="viewCampaignSummaryModal">
            <div class="modal-dialog">
                <div class="modal-content">
                </div>
            </div>
        </div>

    </jsp:attribute>


      <jsp:attribute name="js_inline">
        <script type="text/javascript">

        </script>

    </jsp:attribute>


</hms:twrapper>