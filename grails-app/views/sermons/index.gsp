<%@ page import="knd.Staff" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="upload">
    <title>Staff: <g:message code="staff.sermons.add.label"/></title>

    <asset:stylesheet src="upload/fine-uploader-new.min.css"/>
    <asset:javascript src="upload/fine-uploader.min.js"/>
    <!--
    Read the "Getting Started Guide" at http://docs.fineuploader.com/quickstart/01-getting-started.html
    if you are not yet familiar with Fine Uploader UI.
    Please see http://docs.fineuploader.com/features/styling.html for information
    on how to customize this template.
-->
    <script type="text/template" id="qq-template">
    <div class="qq-uploader-selector qq-uploader" qq-drop-area-text="Drop files here">
        <div class="qq-total-progress-bar-container-selector qq-total-progress-bar-container">
            <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"
                 class="qq-total-progress-bar-selector qq-progress-bar qq-total-progress-bar"></div>
        </div>

        <div class="qq-upload-drop-area-selector qq-upload-drop-area" qq-hide-dropzone>
            <span class="qq-upload-drop-area-text-selector"></span>
        </div>

        <div class="qq-upload-button-selector qq-upload-button">
            <div>Upload a file</div>
        </div>
        <span class="qq-drop-processing-selector qq-drop-processing">
            <span>Processing dropped files...</span>
            <span class="qq-drop-processing-spinner-selector qq-drop-processing-spinner"></span>
        </span>
        <ul class="qq-upload-list-selector qq-upload-list" aria-live="polite" aria-relevant="additions removals">
            <li>
                <div class="qq-progress-bar-container-selector">
                    <div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"
                         class="qq-progress-bar-selector qq-progress-bar"></div>
                </div>
                <span class="qq-upload-spinner-selector qq-upload-spinner"></span>
                <img class="qq-thumbnail-selector" qq-max-size="100" qq-server-scale>
                <span class="qq-upload-file-selector qq-upload-file"></span>
                <span class="qq-edit-filename-icon-selector qq-edit-filename-icon" aria-label="Edit filename"></span>
                <input class="qq-edit-filename-selector qq-edit-filename" tabindex="0" type="text">
                <span class="qq-upload-size-selector qq-upload-size"></span>
                <button type="button" class="qq-btn qq-upload-cancel-selector qq-upload-cancel">Cancel</button>
                <button type="button" class="qq-btn qq-upload-retry-selector qq-upload-retry">Retry</button>
                <button type="button" class="qq-btn qq-upload-delete-selector qq-upload-delete">Delete</button>
                <span role="status" class="qq-upload-status-text-selector qq-upload-status-text"></span>
            </li>
        </ul>

        <dialog class="qq-alert-dialog-selector">
            <div class="qq-dialog-message-selector"></div>

            <div class="qq-dialog-buttons">
                <button type="button" class="qq-cancel-button-selector">Close</button>
            </div>
        </dialog>

        <dialog class="qq-confirm-dialog-selector">
            <div class="qq-dialog-message-selector"></div>

            <div class="qq-dialog-buttons">
                <button type="button" class="qq-cancel-button-selector">No</button>
                <button type="button" class="qq-ok-button-selector">Yes</button>
            </div>
        </dialog>

        <dialog class="qq-prompt-dialog-selector">
            <div class="qq-dialog-message-selector"></div>
            <input type="text">

            <div class="qq-dialog-buttons">
                <button type="button" class="qq-cancel-button-selector">Cancel</button>
                <button type="button" class="qq-ok-button-selector">Ok</button>
            </div>
        </dialog>
    </div>
    </script>
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
                    <legend>Upload Sermon</legend>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="title">Title</label>

                        <div class="col-md-5">
                            <input id="title" name="title" placeholder="Short and descriptive"
                                   class="form-control input-md" required="" type="text" autocomplete="off">

                        </div>
                    </div>

                    <!-- Textarea -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="desc">Description</label>

                        <div class="col-md-4">
                            <textarea class="form-control" id="desc" name="desc" placeholder="Short note"></textarea>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="author">Author</label>

                        <div class="col-md-5">
                            <input id="author" name="author" placeholder="Main Preacher"
                                   class="form-control input-md" required="" type="text">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="cat">Category</label>

                        <div class="col-md-5">
                            <input id="cat" name="cat" placeholder="eg. 2011, 2012..."
                                   class="form-control input-md" required="" type="text">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="title">Length</label>

                        <div class="col-md-5">
                            <input id="length" name="length" placeholder="30:15 mins"
                                   class="form-control input-md" required="" type="text">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="title">Date</label>

                        <div class="col-md-5">
                            <input id="date" name="datec" placeholder="dd/mm/yyyy"
                                   class="form-control input-md" required="" type="text">

                        </div>
                    </div>

                    <!-- File Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="uploader"></label>

                        <div class="col-md-4">
                            <input id="audio" name="audio" type="hidden">

                            %{--<p class="help-block">Select audio file to upload</p>--}%
                            <div id="uploader"></div>
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
</div>

<script>
    var audi = document.getElementById("audio");

    // Some options to pass to the uploader are discussed on the next page
    var uploader = new qq.FineUploader({
        debug: true,
        element: document.getElementById("uploader"),
        request: {
            endpoint: '${createLink(url: 'http://localhost:8100/uploads')}'
        },
        deleteFile: {
            enabled: true, // defaults to false
            endpoint: '${createLink(url: 'http://localhost:8100/uploads')}'
        },
        chunking: {
            enabled: true,
            concurrent: {
                enabled: true
            },
            success: {
                endpoint: '${createLink(url: 'http://localhost:8100/chunksdone')}'
            }
        },
        resume: {
            enabled: true
        },
        callbacks: {
            onComplete: function(id, name, responseJSON, maybeXhr) {audi.value = name;console.log(id)}
        }

    })
</script>


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
