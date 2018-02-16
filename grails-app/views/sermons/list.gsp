<%@ page import="knd.Staff" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'staff.list.label', default: 'Staff')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet'
          type='text/css'>

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

            <div class="col-md-12">

                <div class="panel panel-default panel-table">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col col-xs-6">
                                <h3 class="panel-title">Saved Sermons</h3>
                            </div>

                            <div class="col col-xs-6 text-right">
                                <a role="button" class="btn btn-sm btn-primary btn-create"
                                   href="${createLink(action: 'index')}">Create New</a>
                            </div>
                        </div>
                    </div>

                    <div class="panel-body">
                        <table class="table table-striped table-bordered table-list">
                            <thead>
                            <tr>
                                <th><em class="fa fa-cog"></em></th>
                                <th class="hidden-xs">ID</th>
                                <g:sortableColumn property="title" title="Title"/>
                                <g:sortableColumn property="author" title="Author"/>
                                <g:sortableColumn property="date" title="Date"/>
                                <g:sortableColumn property="category" title="Category"/>
                                <g:sortableColumn property="length" title="Length"/>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${sermons}" var="sermon">
                                <tr>
                                    <td align="center">
                                        <a class="btn btn-default" style="max-width: 35px" href="edit/${sermon.id}">
                                            <em class="fa fa-pencil"></em></a>
                                        <a class="btn btn-danger delete" style="max-width: 35px" id="${sermon.id}">
                                            <em class="fa fa-trash"></em></a>
                                    </td>
                                    <td class="hidden-xs">${sermon.id}</td>
                                    <td>${sermon.title}</td>
                                    <td>${sermon.author}</td>
                                    <td>${sermon.date}</td>
                                    <td>Financial</td>
                                    <td>${sermon.length}</td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>

                    </div>

                    <div class="panel-footer">
                        <div class="row">
                            <div class="col col-xs-4">Page 1 of 5
                            </div>

                            <div class="col col-xs-8">
                                <ul class="pagination hidden-xs pull-right">
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                </ul>
                                <ul class="pagination visible-xs pull-right">
                                    <li><a href="#">«</a></li>
                                    <li><a href="#">»</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
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

.panel-table .panel-body {
    padding: 0;
}

.panel-table .panel-body .table-bordered {
    border-style: none;
    margin: 0;
}

.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type {
    text-align: center;
    width: 100px;
}

.panel-table .panel-body .table-bordered > thead > tr > th:last-of-type,
.panel-table .panel-body .table-bordered > tbody > tr > td:last-of-type {
    border-right: 0px;
}

.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type,
.panel-table .panel-body .table-bordered > tbody > tr > td:first-of-type {
    border-left: 0px;
}

.panel-table .panel-body .table-bordered > tbody > tr:first-of-type > td {
    border-bottom: 0px;
}

.panel-table .panel-body .table-bordered > thead > tr:first-of-type > th {
    border-top: 0px;
}

.panel-table .panel-footer .pagination {
    margin: 0;
}

/*
used to vertically center elements, may need modification if you're not using default sizes.
*/
.panel-table .panel-footer .col {
    line-height: 34px;
    height: 34px;
}

.panel-table .panel-heading .col h3 {
    line-height: 30px;
    height: 30px;
}

.panel-table .panel-body .table-bordered > tbody > tr > td {
    line-height: 34px;
}


</style>
<asset:javascript src="jquery.js"/>
<script type="application/javascript">
    $(document).ready(function () {
        $('.delete').on('click', function (e) {
            var i = confirm("Dalete this entry?");
            if(i) {
                window.location.replace('delete/' + e.currentTarget.id)
            }
        });
    });
</script>
</body>
</html>
