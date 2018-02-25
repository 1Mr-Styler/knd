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
                        <a class="btn btn-primary"
                           href="${createLink(controller: 'downloads')}/${sermon.id}" role="button">Download →</a></div>
                </div>
                <hr>
            </g:each>

            <div class="text-center center-block">
                <ul class="pagination">
                    <g:paginate total="${total}" controller="search" action="index" params="${params}"/>
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

        </div>
    </div>
</div>
</body>
</html>
