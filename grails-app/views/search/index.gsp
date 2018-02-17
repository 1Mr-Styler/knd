<%@ page import="knd.SlidersService" %>
<%
    def slivice = grailsApplication.classLoader.loadClass('knd.SlidersService').newInstance()
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="eni.site.title"/>: Sermons</title>
</head>

<body>
<div class="subpage-head has-margin-bottom">
    <div class="container">
        <h3>Sermons</h3>

        <p class="lead">List of Uploaded Sermons</p>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-9 has-margin-bottom">

            <g:each in="${sermons}" var="sermon">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="highlight-bg has-padding-xs event-details">
                            <div class="ed-title">DETAILS</div>

                            <div class="ed-content"><span class="glyphicon glyphicon-calendar"></span>
                                <g:formatDate format="d MMM yyyy" date="${sermon.date}"/><br>
                                <span class="glyphicon glyphicon-time"></span> ${sermon.length} <br>
                                <span class="glyphicon glyphicon-user"></span> ${sermon.author}
                            </div>
                        </div>
                    </div>

                    <div class="col-md-8 col-sm-8 bulletin">
                        <h4 class="media-heading">${sermon.title}<span class="badge pull-right">${sermon.category}</span></h4>

                        <p class="media-content">${sermon.note}</p>
                        <a class="btn btn-primary" href="#" role="button">Download →</a></div>
                </div>
                <hr>
            </g:each>

            <div class="text-center center-block">
                <ul class="pagination">
                    <li class="disabled"><a href="events-programs.html#">«</a></li>
                    <li class="active"><a href="events-programs.html#">1 <span class="sr-only">(current)</span></a></li>
                    <li><a href="events-programs.html#">2</a></li>
                    <li><a href="events-programs.html#">3</a></li>
                    <li><a href="events-programs.html#">4</a></li>
                    <li><a href="events-programs.html#">5</a></li>
                    <li><a href="events-programs.html#">»</a></li>
                </ul>
            </div>
        </div>


        <div class="col-md-3">
            <div class="vertical-links has-margin-xs-bottom">
                <h4>Categories</h4>
                <ol class="list-unstyled">
                    <g:each in="${categories}" var="category">
                        <li><a href="?category=${category.key}">
                            ${category.key} <span class="badge pull-right">${category.value}</span></a></li>
                    </g:each>
                </ol>
            </div>

            <div class="well">
                <h4>About</h4>

                <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet
                fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
            </div>

            <div class="tag-cloud has-margin-bottom"><a href="events-programs.html#">catholic</a> <a
                    href="events-programs.html#">bulletin</a> <a href="events-programs.html#">programs</a> <a
                    href="events-programs.html#">events</a> <a href="events-programs.html#">church</a> <a
                    href="events-programs.html#">charity</a> <a href="events-programs.html#">website</a> <a
                    href="events-programs.html#">template</a> <a href="events-programs.html#">non-profit</a> <a
                    href="events-programs.html#">belief</a> <a href="events-programs.html#">ministry</a> <a
                    href="events-programs.html#">sermon</a> <a href="events-programs.html#">nature</a></div>
        </div>
    </div>
</div>
</body>
</html>
