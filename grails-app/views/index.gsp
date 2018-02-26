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
                <h4>LATEST TWEETS</h4>
            </div>

            <div class="row">

                <div class="col-md-8 col-sm-8 bulletin">
                    <a class="twitter-timeline"
                       href="https://twitter.com/koinonia_eni?ref_src=twsrc%5Etfw">Tweets by koinonia_eni</a> <script
                        async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                </div>
            </div>
        </div>


            <div class="col-md-3">
                <div class="well">
                    <div class="section-title">
                        <h4>RECENT SERMONS</h4>
                    </div>

                    <sermon:latest/>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
