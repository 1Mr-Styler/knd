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
            class="glyphicon glyphicon-chevron-right"></span></a></div>
</body>
</html>
