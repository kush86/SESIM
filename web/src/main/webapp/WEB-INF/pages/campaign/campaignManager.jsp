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
                           href="<c:url value="/se-controller/create/campaign"/>">
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
                        <th data-field="template" data-sortable="true">Template</th>
                            <%--<th data-field="keyword" data-sortable="true">Keyword</th>--%>
                            <%--<th data-field="shortCode" data-sortable="true">Short-code</th>--%>
                            <%--<th data-field="status" data-sortable="true">Status</th>--%>
                            <%--<th data-field="startTime" data-sortable="true">Start Time</th>--%>
                            <%--<th data-field="endTime" data-sortable="true">End Time</th>--%>
                        <th data-field="action">Action</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach items="${campaigns}" var="campaign" varStatus="ulist">
                        <tr>
                                <%--<td>--%>
                                <%--<a href="<c:url value="/campaign-manager/view/${campaign.id}" />"--%>
                                <%--data-toggle='modal' data-target='.view-modal'>--%>
                                <%--<c:out value="${campaign.name}"/>--%>
                                <%--</a>--%>
                                <%--</td>--%>
                                <%--<td><c:out value="${campaign.campaignType}"/></td>--%>
                                <%--<c:if test="${admin}">--%>
                                <%--<td><c:out value="${campaign.user.name}"/></td>--%>
                                <%--</c:if>--%>
                            <td><c:out value="${campaign.name}"/></td>
                            <td><c:out value="${campaign.template.name}"/></td>
                                <%--<td><c:out value="${campaign.status}"/></td>--%>
                                <%--<td>--%>
                                <%--<fmt:formatDate type="date" pattern="MM/dd/yyyy hh:mm a" value="${campaign.startTime}"/>--%>
                                <%--</td>--%>
                                <%--<td>--%>
                                <%--<fmt:formatDate type="date" pattern="MM/dd/yyyy hh:mm a" value="${campaign.endTime}"/>--%>
                                <%--</td>--%>
                            <td>
                                    <%--<c:if test="${campaign.status == 'SCHEDULED' || campaign.status == 'PAUSED'}">--%>
                                <a class="btn btn-xs btn-default" aria-hidden="true"
                                   href="<c:url value="/se-controller/run/${campaign.id}"/>"
                                   <%--data-campaign-id="${campaign.name}"--%>
                                   <%--data-campaign-state="start"--%>
                                   <%--data-campaign-url="<c:url value="/campaign-manager/start/${campaign.id}"/>"--%>
                                   <%--data-toggle='modal'--%>
                                   <%--data-target='#stateChangeWarningModal'--%>
                                   data-tooltip="true" title="run">
                                    <i class="glyphicon glyphicon-play"></i>
                                </a>
                                    <%--</c:if>--%>
                                    <%--<c:if test="${campaign.status == 'RUNNING' || campaign.status == 'PENDING' }">--%>
                                    <%--<a class="btn btn-xs btn-default" aria-hidden="true"--%>
                                    <%--data-campaign-name="${campaign.name}"--%>
                                    <%--data-campaign-state="pause"--%>
                                    <%--data-campaign-url="<c:url value="/campaign-manager/pause/${campaign.id}"/>"--%>
                                    <%--data-toggle='modal'--%>
                                    <%--data-target='#stateChangeWarningModal'--%>
                                    <%--data-tooltip="true" title="Pause">--%>
                                    <%--<i class="glyphicon glyphicon-pause"></i>--%>
                                    <%--</a>--%>
                                    <%--</c:if>--%>
                                    <%--<c:if test="${campaign.status != 'EXPIRED' && campaign.status != 'STOPPED'}">--%>
                                    <%--<a class="btn btn-xs btn-default" aria-hidden="true"--%>
                                    <%--data-campaign-name="${campaign.name}"--%>
                                    <%--data-campaign-state="stop"--%>
                                    <%--data-campaign-url="<c:url value="/campaign-manager/stop/${campaign.id}"/>"--%>
                                    <%--data-toggle='modal'--%>
                                    <%--data-target='#stateChangeWarningModal'--%>
                                    <%--data-tooltip="true" title="Stop">--%>
                                    <%--<i class="glyphicon glyphicon-stop"></i>--%>
                                    <%--</a>--%>
                                    <%--</c:if>--%>
                                    <%--<c:if test="${campaign.status == 'EXPIRED' || campaign.status == 'STOPPED' }">--%>
                                    <%--<a class="btn btn-xs btn-default" aria-hidden="true"--%>
                                    <%--data-campaign-name="${campaign.name}"--%>
                                    <%--data-campaign-url="<c:url value="/campaign-manager/remove/${campaign.id}"/>"--%>
                                    <%--data-toggle='modal'--%>
                                    <%--data-target='#campaignWarningModal'--%>
                                    <%--data-tooltip="true" title="Remove">--%>
                                    <%--<i class="glyphicon glyphicon-trash"></i>--%>
                                    <%--</a>--%>
                                    <%--</c:if>--%>
                                    <%--<c:if test="${campaign.status != 'EXPIRED' && campaign.status != 'STOPPED' }">--%>
                                    <%--<a class="btn btn-xs btn-default" aria-hidden="true"--%>
                                    <%--href="<c:url value="/campaign-manager/edit/${campaign.id}"/>"--%>
                                    <%--data-tooltip="true" title="Edit">--%>
                                    <%--<i class="glyphicon glyphicon-edit"></i>--%>
                                    <%--</a>--%>
                                    <%--</c:if>--%>

                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </jsp:attribute>

    <jsp:attribute name="after_page_body">
        <%--<jsp:include page="campaignRemoveWarningModal.jsp"/>--%>
        <%--<jsp:include page="campaignStateChangeWarningModal.jsp"/>--%>

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
            //            /*campaign state change warning modal*/
            //            $('#stateChangeWarningModal').on('show.bs.modal', function (event) {
            //                var button = $(event.relatedTarget); // Button that triggered the modal
            //                var campaignName = button.data('campaign-name');
            //                var campaignState = button.data('campaign-state');
            //                var url = button.data('campaign-url');
            //
            //                var modal = $(this);
            //                modal.find('#campaign-display').text(campaignName);
            //                modal.find('#campaign-state').text(campaignState);
            //
            //                var link = modal.find('a');
            //                link.attr("href", url);
            //            });

            /*campaign warning modal*/
            //            $('#campaignWarningModal').on('show.bs.modal', function (event) {
            //                var button = $(event.relatedTarget); // Button that triggered the modal
            //                var campaignName = button.data('campaign-name');
            //                var url = button.data('campaign-url');
            //
            //                var modal = $(this);
            //                modal.find('#campaign-display').text(campaignName);
            //
            //                var link = modal.find('a');
            //                link.attr("href", url);
            //            });
        </script>

    </jsp:attribute>


</hms:twrapper>