<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="hms" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<hms:twrapper>

    <jsp:attribute name="page_heading">
                <div class="row">
                  <div id="top-left" class="col-md-12 text-center">
                      <h1><span class="glyphicon glyphicon-alert" aria-hidden="true"></span> Error ${errorCode}</h1>

                      <h1>
                          <small>${errorMessage}</small>
                      </h1>
                  </div>
    </jsp:attribute>
    <jsp:attribute name="page_body">

    </jsp:attribute>

</hms:twrapper>