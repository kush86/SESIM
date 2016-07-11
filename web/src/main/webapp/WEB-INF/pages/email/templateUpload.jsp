<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<%-- create user modal --%>

<div id="uploadEmailTemplateModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Upload Email Template</h4>
            </div>
            <div class="modal-body">

                <form class="form-horizontal" method="post" role="form" enctype="multipart/form-data"
                      action="<c:url value="/se-controller/upload"/>">

                    <div class="form-group">
                        <label for="file-name" class="col-md-3 control-label">Template Name</label>

                        <div class="col-sm-9">
                            <input type="text" id="file-name" name="name" class="form-control">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="file-name" class="col-md-3 control-label">File Path</label>

                        <div class="col-md-9">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Select CSV file" id="path">
                            <span class="input-group-btn">
                                <button onclick="$('input[id=file-path]').click();" class="btn btn-secondary"
                                        type="button">
                                    Browse
                                </button>
                            </span>
                            </div>
                        </div>
                    </div>
                    <%--<div>--%>


                    <input type="file" id="file-path" name="file" class="btn btn-default" style="display:none">

                    <%--</div>--%>
                    <input type="submit" hidden="true" value="Upload" id="upload-btn">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        onclick="document.getElementById('upload-btn').click();">
                    Upload
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
            </div>

        </div>
    </div>
</div>

<script type="text/javascript">
    $('input[id=file-path]').change(function () {
        $('#path').val($(this).val());
    });
</script>
