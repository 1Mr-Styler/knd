<%@ page import="knd.Staff" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'staff.label', default: 'Staff')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>

<div class="subpage-head has-margin-bottom">
    <div class="container">
        <h3></h3>

        <p class="lead"></p>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-bookmark"></span> Quick Shortcuts</h3>
                </div>

                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <a href="${createLink(controller: 'sliders')}" class="btn btn-danger btn-lg"
                               role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-list-alt"></span> <br/>Sliders</a>
                            <a href="#" class="btn btn-warning btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-bookmark"></span> <br/>Events</a>
                            <a href="#" class="btn btn-info btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-signal"></span> <br/>Bulletins</a>
                            <a href="#" class="btn btn-success btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-comment"></span> <br/>Gallery</a>
                        </div>

                        <div class="col-xs-6 col-md-6">
                            <a href="#" class="btn btn-success btn-lg" role="button"  style="font-size: 14px"><span
                                    class="glyphicon glyphicon-user"></span> <br/>Users</a>
                            <a href="#" class="btn btn-info btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-file"></span> <br/>Sermons</a>
                            <a href="#" class="btn btn-primary btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-picture"></span> <br/>Photos</a>
                            <a href="#" class="btn btn-danger btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-tag"></span> <br/>Tags</a>
                        </div>
                    </div>
                    <a href="${createLink(uri: '/')}" target="_blank" class="btn btn-success btn-lg btn-block" role="button"><span
                            class="glyphicon glyphicon-globe"></span> Website</a>
                </div>
            </div>
        </div>
    </div>
</div>



<style>
body {
    padding-top: 20px;
}

.panel-body .btn:not(.btn-block) {
    width: 120px;
    margin-bottom: 10px;
}
</style>
</body>
</html>
