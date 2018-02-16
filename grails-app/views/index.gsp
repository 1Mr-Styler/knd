<%@ page import="knd.SlidersService" %>
<%
    def slivice = grailsApplication.classLoader.loadClass('knd.SlidersService').newInstance()
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="eni.site.title"/>: Home</title>
</head>

<body>
<div id="myCarousel" class="carousel slide" data-ride="carousel">

    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <g:main/>
    <a class="left carousel-control" href="index.html#myCarousel" role="button" data-slide="prev"><span
            class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control"
                                                                    href="index.html#myCarousel" role="button"
                                                                    data-slide="next"><span
            class="glyphicon glyphicon-chevron-right"></span></a>
</div>

<div class="highlight-bg has-margin-bottom">
    <div class="container event-cta">
        <div class="ec-txt">
            <p style="text-transform: uppercase; margin-left: 46%">Welcome To Koinonia Sermons</p>
        </div>
    </div>
</div>

<div class="container has-margin-bottom">
    <div class="row">
        <div class="col-md-9 has-margin-bottom">
            <div class="section-title left-align-desktop">
                <h4>LATEST BULLETIN</h4>
            </div>

            <div class="row has-margin-bottom">
                <div class="col-md-4 col-sm-4"><img class="img-responsive center-block" src="images/blog-thumb-1.jpg"
                                                    alt="bulletin blog"></div>

                <div class="col-md-8 col-sm-8 bulletin">
                    <h4 class="media-heading">Perseverance of the Saints</h4>

                    <p>on 17th June 2014 by <a href="index.html#" class="link-reverse">Vincent John</a></p>

                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec
                    facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor
                    sit amet...</p>
                    <a class="btn btn-primary" href="blog-single.html" role="button">Read Article →</a></div>
            </div>

            <div class="row">
                <div class="col-md-4 col-sm-4"><img class="img-responsive center-block" src="images/blog-thumb-2.jpg"
                                                    alt="bulletin blog"></div>

                <div class="col-md-8 col-sm-8 bulletin">
                    <h4 class="media-heading">Lord is Sufficient for all of our needs</h4>

                    <p>on 17th June 2014 by <a href="index.html#" class="link-reverse">Jose Mathew</a></p>

                    <p class="media-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis
                    egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris
                    quam. Lorem ipsum dolor sit amet...</p>
                    <a class="btn btn-primary" href="blog-single.html" role="button">Read Article →</a></div>
            </div>
        </div>


        <div class="col-md-3">
            <div class="well">
                <div class="section-title">
                    <h4>RECENT SERMONS</h4>
                </div>

                <div class="list-group"><a href="sermons.html" class="list-group-item">
                    <p class="list-group-item-heading">Heavens and the earth</p>

                    <p class="list-group-item-text">24:15 mins</p>
                </a> <a href="sermons.html" class="list-group-item">
                    <p class="list-group-item-heading">Prayer and petition</p>

                    <p class="list-group-item-text">12:00 mins</p>
                </a> <a href="sermons.html" class="list-group-item">
                    <p class="list-group-item-heading">Fruit of the Spirit</p>

                    <p class="list-group-item-text">30:25 mins</p>
                </a> <a href="sermons.html" class="list-group-item">
                    <p class="list-group-item-heading">Do not be afraid; keep on...</p>

                    <p class="list-group-item-text">17:00 mins</p>
                </a></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
