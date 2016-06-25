<%--
  Created by IntelliJ IDEA.
  User: kusala
  Date: 4/25/16
  Time: 1:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>

    <link rel="stylesheet" type="text/css"
          href="/home/kusala/MyProjects/se-sim/SESIM/web/src/main/webapp/css/bootstrap.min.css"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Stylish Portfolio - Start Bootstrap Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<c:url value="/css/stylish-portfolio.css" />" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<c:url value="/css/font-awesome.min.css" />" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
          rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!-- Navigation -->
<a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
<nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
        <li class="sidebar-brand">
            <a href="#top" onclick=$("#menu-close").click();>Start Bootstrap</a>
        </li>
        <li>
            <a href="#top" onclick=$("#menu-close").click();>Home</a>
        </li>
        <li>
            <a href="#about" onclick=$("#menu-close").click();>About</a>
        </li>
        <li>
            <a href="#services" onclick=$("#menu-close").click();>Services</a>
        </li>
        <li>
            <a href="#portfolio" onclick=$("#menu-close").click();>Portfolio</a>
        </li>
        <li>
            <a href="#contact" onclick=$("#menu-close").click();>Contact</a>
        </li>
    </ul>
</nav>

<!-- Header -->
<header id="top" class="header">
    <div class="text-vertical-center">
        <h1>Don't close your browser</h1>

        <h3>This is a phishing awareness training sent by SE-SIM</h3>
        <br>
        <a href="#about" class="btn btn-dark btn-lg">Learn how to detect phishing scams</a>
    </div>
</header>

<!-- About -->
<section id="about" class="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2>Watch out for hoaxes, phishing and scams.</h2>

                <p class="lead">Online hoaxes are getting more sophisticated, making it tough to know whether an email,
                    SMS or website is real. It’s important you learn how to spot the fakes so you stay safer online.</p>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

<!-- Services -->
<!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
<section id="services" class="services bg-primary">
    <div class="container">
        <div class="row text-center">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <div class="service-item panel panel-default" align="left">
                            <div class="panel-body">
                                <span class="fa-stack fa-4x">
                                <%--<i class="fa fa-circle fa-stack-2x"></i>--%>
                                <i class="fa fa-eye-slash fa-stack-1x"></i>
                            </span>
                                <h4>
                                    <strong>Hoax Websites</strong>
                                </h4>
                                <h4>
                                    Hoax websites often look like the real thing.
                                </h4>

                                <ul class="text-muted">
                                    <li>
                                        When logging in to banking, shopping or email sites, always look for “https” at
                                        the
                                        beginning of the URL – the “s” stands for secure
                                    </li>
                                    <li>
                                        Check for the padlock symbol in your browser’s address bar
                                    </li>
                                    <li>
                                        Make sure the URL is genuine. Phishers often create fake websites with URLs
                                        similar
                                        to the real one
                                    </li>
                                    <li>
                                        Enter site URLs straight into your browser’s address bar. Don’t rely on links in
                                        emails as they could be fake
                                    </li>
                                </ul>
                                <a href="#" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6" align="left">
                        <div class="service-item panel panel-default">
                            <div class="panel-body">

                                <span class="fa-stack fa-4x">
                                <%--<i class="fa fa-circle fa-stack-2x"></i>--%>
                                <i class="fa fa-user-secret fa-stack-1x"></i>
                            </span>
                                <h4>
                                    <strong>Phishing Emails</strong>
                                </h4>
                                <h4>
                                    The people behind phishing emails are experts in manipulation. Look out for:
                                </h4>

                                <ul>
                                    <li>Generic greetings, like “Dear user”</li>
                                    <li>False links. Hover over a link or tap and hold it on a mobile device to see its
                                        destination
                                    </li>
                                    <li>Wrong, out of date or out of place logos or design</li>
                                    <li>Upsetting or urgent statements demanding you react immediately</li>
                                    <li>Bad spelling and grammar</li>
                                    <li>Requests for financial or personal information</li>
                                </ul>

                                <a href="#" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="service-item panel panel-default" align="left">
                            <div class="panel-body">
                                <span class="fa-stack fa-4x">
                                <%--<i class="fa fa-circle fa-stack-2x"></i>--%>
                                <i class="fa fa-money fa-stack-1x" aria-hidden="true"></i>
                            </span>
                                <h4>
                                    <strong>Scams</strong>
                                </h4>
                                <h4>
                                    Scammers try to trick you into giving them money. Look out for:
                                </h4>
                                <ul>
                                    <li>Offers to pay more than usual for an item</li>
                                    <li>Requests to use a buyer’s shipping company</li>
                                    <li>Amazing, too good to be true offers</li>
                                    <li>The promise of money in return for a favour</li>
                                    <li>A promise to donate to charity if you contact them</li>
                                    <li>Notifications of lottery wins</li>
                                    <li>Unsolicited job offers</li>
                                    <li>Also beware of unexpected emails, Facebook or other online messages from a
                                        friend
                                        asking for money. Their account may have been hacked.
                                    </li>
                                </ul>
                                <a href="#" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

<!-- Callout -->
<aside class="callout">
    <div class="text-vertical-center">
        <h1>Vertically Centered Text</h1>
    </div>
</aside>

<!-- Portfolio -->
<section id="portfolio" class="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1 text-center">
                <h2>Our Work</h2>
                <hr class="small">
                <div class="row">
                    <div class="col-md-6">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive"
                                     src="<c:url value="/images/portfolio-1.jpg" />">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive"
                                     src="<c:url value="/images/portfolio-2.jpg" />">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive"
                                     src="<c:url value="/images/portfolio-3.jpg" />">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive"
                                     src="<c:url value="/images/portfolio-4.jpg" />">
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /.row (nested) -->
                <a href="#" class="btn btn-dark">View More Items</a>
            </div>
            <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

<!-- Call to Action -->
<aside class="call-to-action bg-primary">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h3>The buttons below are impossible to resist.</h3>
                <a href="#" class="btn btn-lg btn-light">Click Me!</a>
                <a href="#" class="btn btn-lg btn-dark">Look at Me!</a>
            </div>
        </div>
    </div>
</aside>

<!-- Map -->
<section id="contact" class="map">
    <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
            src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
    <br/>
    <small>
        <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
    </small>
    </iframe>
</section>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1 text-center">
                <h4><strong>Start Bootstrap</strong>
                </h4>

                <p>3481 Melrose Place<br>Beverly Hills, CA 90210</p>
                <ul class="list-unstyled">
                    <li><i class="fa fa-phone fa-fw"></i> (123) 456-7890</li>
                    <li><i class="fa fa-envelope-o fa-fw"></i> <a href="mailto:name@example.com">name@example.com</a>
                    </li>
                </ul>
                <br>
                <ul class="list-inline">
                    <li>
                        <a href="#"><i class="fa fa-facebook fa-fw fa-3x"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-twitter fa-fw fa-3x"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-dribbble fa-fw fa-3x"></i></a>
                    </li>
                </ul>
                <hr class="small">
                <p class="text-muted">Copyright &copy; Your Website 2014</p>
            </div>
        </div>
    </div>
</footer>

<!-- jQuery -->
<script src="<c:url value="/js/jquery.min.js" />"></script>
<script src="<c:url value="/js/bootstrap.min.js" />"></script>

<!-- Custom Theme JavaScript -->
<script>
    // Closes the sidebar menu
    $("#menu-close").click(function (e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Opens the sidebar menu
    $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Scrolls to the selected menu item on the page
    $(function () {
        $('a[href*=#]:not([href=#])').click(function () {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {

                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
</script>

</body>

</html>