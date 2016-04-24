function setResultMessage(targetElement, jsonResponse) {
    try {
        var obj = jQuery.parseJSON(jsonResponse);
    } catch (e) {
        //alert ("Problem encountered. Please check permission and login session.");
    }

    if(obj.type == 'ERROR') {
        $('#' + targetElement).html('<div class=\"alert alert-danger\"><a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>' +
        obj.message + '</div>');
    } else if(obj.type == 'SUCCESS') {
        $('#' + targetElement).html('<div class=\"alert alert-success\"><a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>' +
        obj.message + '</div>');
    }
    return obj.type;
}

