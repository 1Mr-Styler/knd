<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Koinonia"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
    <asset:stylesheet src="application.css"/>

    <link rel="shortcut icon" href="${assetPath(src: 'favicon.png')}">

    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700' rel='stylesheet' type='text/css'>

    %{--<asset:javascript src="upload/fine-uploader.core.js"/>--}%

    <g:layoutHead/>
</head>

<body class="container">
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span
                    class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span></button>
            <a class="navbar-brand" href="${createLink(uri: '/')}"><img src="${assetPath(src: 'church-logo.png')}"
                                                                        alt="church logo"
                                                                        class="img-responsive"></a></div>

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="${createLink(uri: '/')}">HOME</a>
                </li>
                <li>
                    <a href="${createLink(controller: 'search')}">Sermons</a>
                </li>
                <li><a></a>&nbsp;</li>
                <li>
                    <form action="${createLink(controller: 'search')}"
                          class="navbar-form navbar-left navbar-input-group">
                        <div class="input-group">
                            <input type="text" class="form-control" name="search"
                                   placeholder="Search Sermons" id="txtSearch"/>
                        </div>
                        <button type="submit" class="btn btn-default">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </form>
                </li>
            </ul>
        </div>

    </div>
</div>


<g:layoutBody/>


<footer>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-3">
                <h5>ABOUT KOINONIA</h5>

                <p>KOINONIA is a weekly programme organised by the Eternity Network International where people come to experience WORSHIP,
                WORD, MIRACLES AND LOVE, experience true intimacy with the Holy spirit and learn to be with Him, be like Him and represent Him.</p>
            </div>

            <div class="col-sm-6 col-md-3">
                <h5>QUICK LINKS</h5>
                <ul class="footer-links">
                    <li><a href="${createLink(controller: 'search')}">Sermons</a></li>
                    <li><a href="${createLink(controller: 'events')}">Upcoming events</a></li>
                    <li><a href="${createLink(url: 'https://www.facebook.com/koinoniaeni/')}"
                           target="_blank">Contact us</a></li>
                </ul>
            </div>

            <div class="col-sm-6 col-md-3">
                <h5>OUR ADDRESS</h5>

                <p>Christ Gospel Church,<br>
                    Samaru, Zaria<br>
                    Nigeria.<br>
                    <br>
                    Phone: ${message(code: 'eni.site.phone')}<br>
                    Email: <a
                        href="mailto:info@${message(code: 'eni.site.tld')}">info@${message(code: 'eni.site.tld')}</a>
                </p>
            </div>

            <div class="col-sm-6 col-md-3">
                <h5>CONNECT</h5>

                <div class="social-icons">
                    <a href="https://www.facebook.com/koinoniaeni/" target="_blank">
                        <img src="${assetPath(src: 'fb-icon.png')}" alt="social"></a>
                    <a href="https://twitter.com/koinonia_eni" target="_blank">
                        <img src="${assetPath(src: 'tw-icon.png')}" alt="social"></a>
                    <a href="http://mixlr.com/koinonia-radio/" target="_blank">
                        <img src="${assetPath(src: 'icon-mx.png')}" alt="social"></a>
                </div>
            </div>
        </div>
    </div>

    <div class="copyright">
        <div class="container">
            <p class="text-center">Copyright © 2018 All rights reserved</p>
        </div>
    </div>
</footer>
<style>
.navbar-input-group {
    font-size: 0px; /*removes whitespace between button and input*/
}

.navbar-input-group input {
    border-top-right-radius: 0px;
    border-bottom-right-radius: 0px;
}

.navbar-input-group .btn {
    border-top-left-radius: 0px;
    border-bottom-left-radius: 0px;
    border-left: 0px;
}
</style>
<asset:javascript src="application.js"/>


</body>
</html>
