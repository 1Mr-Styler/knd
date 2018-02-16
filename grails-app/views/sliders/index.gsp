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
                            <a href="${createLink(controller: 'sliders', action: 'index')}"
                               class="btn btn-danger btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-list-alt"></span> <br/>Create</a>
                            <a href="#" class="btn btn-warning btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-bookmark"></span> <br/>Edit</a>
                            <a href="#" class="btn btn-info btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-signal"></span> <br/>Delete</a>
                            <a href="#" class="btn btn-success btn-lg" role="button" style="font-size: 14px"><span
                                    class="glyphicon glyphicon-comment"></span> <br/>Gallery</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="col-md-10">
            <form class="form-horizontal" action="save" enctype="multipart/form-data" method="post">
                <fieldset>

                    <!-- Form Name -->
                    <legend>Add New Slider</legend>

                    <!-- Select Basic -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="pos">Position</label>
                        <div class="col-md-1">
                            <select id="pos" name="pos" class="form-control">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="title">Main Title</label>

                        <div class="col-md-5">
                            <input id="title" name="title" placeholder="Short and descriptive"
                                   class="form-control input-md" required="" type="text" autocomplete="off">

                        </div>
                    </div>

                    <!-- Textarea -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="body">Description</label>

                        <div class="col-md-4">
                            <textarea class="form-control" id="body" name="body">Explain</textarea>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="btn">Button Text</label>

                        <div class="col-md-5">
                            <input id="btn" name="btn" placeholder="Button label text"
                                   class="form-control input-md" required="" type="text" autocomplete="off">

                        </div>
                    </div>

                    <!-- File Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="bg"></label>

                        <div class="col-md-4">
                            <input id="bg" name="bg" class="input-file" type="file">
                            <p class="help-block">For best results, use 1,600 x 912 background photos</p>
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
