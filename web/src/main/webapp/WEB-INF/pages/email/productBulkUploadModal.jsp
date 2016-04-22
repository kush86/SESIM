<%--
  Created by IntelliJ IDEA.
  User: yasitha
  Date: 12/16/15
  Time: 9:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<div id="uploadProductCSVModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><fmt:message key="campaign.product.tab.modal.upload.title"/></h4>
            </div>

            <div class="modal-body">
                <link rel="stylesheet" href="http://css-spinners.com/css/spinner/atebits.css" type="text/css">

                <form class="form-horizontal" role="form" id="formUploadCSV"
                      action="<c:url value="/campaign-manager/products/upload/${selectedCampaign.id}"/>"
                      method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="productCSVUpload">
                            <fmt:message key="campaign.product.tab.modal.upload.label.file"/>
                        </label>

                        <div class="col-sm-10">
                            <div class="row">
                                <div class="col-md-10 upload-info">
                                    <input id="uploadFile" class="form-control"
                                           placeholder="Choose File"
                                           disabled="disabled"/>

                                </div>
                                <div class="col-md-2 upload-browse">
                                    <div class="fileUpload btn btn-default" style="padding: 3px">
                                        <span>Browse</span>
                                        <input type="file" class="upload" id="productCSVUpload" name="productsFile"
                                               required="required" accept=".csv">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-offset-2 col-sm-10">
                            <button type="submit" id="submitUpload" class="btn btn-default btn-hms-theme">
                                <fmt:message key="spm.generic.text.upload"/>
                            </button>
                        </div>
                    </div>

                    <div class="form-group" id="divUploadStatus" style="display: none">
                        <label class="control-label col-sm-4"><span id="spanUploadStatus"></span></label>

                        <div class="col-sm-8">
                            <div class="progress">
                                <div class="progress-bar progress-bar-striped active" role="progressbar"
                                     aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
                                    40%
                                </div>
                            </div>

                        </div>
                    </div>

                    <div id="divUploadResult">
                    </div>

                    <strong style="padding-left: 30px;">
                        <fmt:message key="campaign.product.tab.modal.upload.instructions.title"/>
                    </strong>
                    <ul>
                        <li><fmt:message key="campaign.product.tab.modal.upload.instructions.item.one"/></li>
                        <li><fmt:message key="campaign.product.tab.modal.upload.instructions.item.two"/></li>
                        <li><fmt:message key="campaign.product.tab.modal.upload.instructions.item.three"/></li>
                    </ul>

                </form>
            </div>
            <div class="modal-footer">

                <button type="button" class="btn btn-default btn-hms-theme" data-dismiss="modal">
                    <fmt:message key="spm.modal.button.close.value"/>
                </button>
            </div>

        </div>
    </div>
</div>

