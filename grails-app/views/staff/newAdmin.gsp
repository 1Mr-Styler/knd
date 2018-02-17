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

        <p class="lead"><g:if test="${flash.message}">
            ${flash.message}
        </g:if></p>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="col-md-2">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-bookmark"></span> Menu</h3>
                </div>

                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-6 col-md-12">
                            <a href="${createLink(controller: 'staff', action: 'users')}"
                               class="btn btn-danger btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-list-alt"></span> <br/>Users</a>
                            <a href="${createLink(controller: 'staff')}" class="btn btn-success btn-lg" role="button"
                               style="font-size: 14px"><span
                                    class="glyphicon glyphicon-comment"></span> <br/>Menu</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="col-md-10">
            <form class="form-horizontal" action="save" enctype="multipart/form-data" method="post">
                <fieldset>

                    <!-- Form Name -->
                    <legend>Add New User</legend>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="username">Username</label>

                        <div class="col-md-5">
                            <input id="username" name="username" placeholder="john1123"
                                   class="form-control input-md" required="" type="text" autocomplete="off">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="pass">Password</label>

                        <div class="col-md-5">
                            <input id="pass" name="pass" placeholder="Password"
                                   class="form-control input-md" required="" type="password">

                        </div>
                    </div>


                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for=""></label>

                        <div class="col-md-4">
                            <button id="" name="" class="btn btn-primary">Save</button>
                        </div>
                    </div>

                </fieldset>
            </form>

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
