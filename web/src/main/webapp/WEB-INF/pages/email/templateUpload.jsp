<%--
  ~  (C) Copyright 2015 hSenid Mobile Solutions (Pvt) Limited.
  ~  All Rights Reserved.
  ~ <p/>
  ~ These materials are unpublished, proprietary, confidential source code of
  ~ hSenid Mobile Solutions (Pvt) Limited and constitute a TRADE SECRET
  ~ of hSenid Mobile Solutions (Pvt) Limited.
  ~ <p/>
  ~ hSenid Mobile Solutions (Pvt) Limited retains all title to and intellectual
  ~ property rights in these materials.
  ~
  --%>

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
                    File to upload:

                    <input type="file" id="file-path" name="file">
                    <br/> Name:
                    <input type="text" id="file-name" name="name">
                    <br/>
                    <br/>
                    <input type="submit" value="Upload"> Press here to upload the file!
                </form>
            </div>

        </div>
    </div>
</div>
