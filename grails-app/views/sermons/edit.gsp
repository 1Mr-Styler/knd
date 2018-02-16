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
                            <a href="${createLink(controller: 'sermons', action: 'index')}"
                               class="btn btn-danger btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-list-alt"></span> <br/>Create</a>
                            <a href="${createLink(controller: 'sermons', action: 'list')}"
                               class="btn btn-warning btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-bookmark"></span> <br/>List</a>
                            <a href="${createLink(controller: 'staff')}" class="btn btn-success btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-comment"></span> <br/>Menu</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="col-md-10">
            <form class="form-horizontal" action="${createLink(controller: 'sermons', action: 'update')}" enctype="multipart/form-data" method="post">
                <fieldset>

                    <!-- Form Name -->
                    <legend>Upload Sermon</legend>
                    <input value="${sermon.id}" type="hidden"/>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="title">Title</label>

                        <div class="col-md-5">
                            <input id="title" name="title" placeholder="Short and descriptive"
                                   class="form-control input-md" required="" type="text" autocomplete="off"
                                   value="${sermon.title}">

                        </div>
                    </div>

                    <!-- Textarea -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="desc">Description</label>

                        <div class="col-md-4">
                            <textarea class="form-control" id="desc" name="desc" placeholder="Short note">${sermon.note}</textarea>
                        </div>
                    </div>


                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="title">Author</label>

                        <div class="col-md-5">
                            <input id="author" name="author" placeholder="Main Preacher"
                                   class="form-control input-md" required="" type="text" value="${sermon.author}">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="title">Length</label>

                        <div class="col-md-5">
                            <input id="length" name="length" placeholder="30:15 mins"
                                   class="form-control input-md" required="" type="text" value="${sermon.length}">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="title">Date</label>

                        <div class="col-md-5">
                            <input id="date" name="datec" placeholder="dd/mm/yyyy"
                                   class="form-control input-md" required="" type="text" value="${sermon.date}">

                        </div>
                    </div>


                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for=""></label>

                        <div class="col-md-4">
                            <button id="" name="" class="btn btn-primary">Update</button>
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
