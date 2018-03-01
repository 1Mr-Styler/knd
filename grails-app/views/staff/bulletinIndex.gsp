<%@ page import="knd.Staff" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="bulletin.label" args="[entityName]"/></title>
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
                            <a href="${createLink(controller: 'staff', action: 'index')}"
                               class="btn btn-danger btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-list-alt"></span> <br/>Create</a>
                            <a href="${createLink(controller: 'staff', action: 'bulletinList')}"
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
            <form class="form-horizontal" action="bulletinSave" enctype="multipart/form-data" method="post">
                <fieldset>

                    <!-- Form Name -->
                    <legend>Add Bulletin</legend>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="title">Title</label>

                        <div class="col-md-5">
                            <input id="title" name="title" placeholder="Short and descriptive"
                                   class="form-control input-md" required="" type="text" autocomplete="off">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="author">Author</label>

                        <div class="col-md-5">
                            <input id="author" name="author" placeholder="Names"
                                   class="form-control input-md" required="" type="text">

                        </div>
                    </div>

                    <!-- Textarea -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="desc">Body</label>

                        <div class="col-md-4">
                            <textarea class="form-control" id="desc" name="desc" placeholder="Short note"></textarea>
                        </div>
                    </div>


                    <!-- File Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="bg"></label>

                        <div class="col-md-4">
                            <input id="bg" name="bg" class="input-file" type="file">
                            <p class="help-block">Select 262x175 thumbnail</p>
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
