<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="uploadUserModal" class="modal fade editUserModel" role="dialog" id="myModal">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Add Users from CSV</h4>
            </div>
            <div class="modal-body">

                <form class="form-horizontal" role="form" action="<c:url value="/users-manager/create/user"/>" method="post">

                    <div class="form-group">
                        <label for="file-name" class="col-md-3 control-label">File Path</label>

                        <div class="col-md-9">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Select CSV file" id="file-name">
                                <span class="input-group-btn">
                                    <button onclick="$('input[id=file-path]').click();" class="btn btn-secondary"
                                        type="button">
                                            Browse
                                    </button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <input type="file" id="file-path" name="file" class="btn btn-default" style="display:none">
                    <button type="submit" hidden="true" id="saveButton"></button>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        onclick="document.getElementById('saveButton').click();">
                    Upload users
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
        $('#file-name').val($(this).val());
    });
</script>

