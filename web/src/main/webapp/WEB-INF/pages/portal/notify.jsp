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
    <style>
        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            width: 70%;
            margin: auto;
        }
    </style>

</head>

<body>

<!-- Navigation -->
<a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
<nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
        <li class="sidebar-brand">
            <a href="#top" onclick=$("#menu-close").click();>Social Engineering</a>
        </li>
        <li>
            <a href="#top" onclick=$("#menu-close").click();>Social Engineering Types</a>
        </li>
        <%--<li>--%>
        <%--<a href="#about" onclick=$("#menu-close").click();>About</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="#services" onclick=$("#menu-close").click();>Services</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="#portfolio" onclick=$("#menu-close").click();>Portfolio</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="#contact" onclick=$("#menu-close").click();>Contact</a>--%>
        <%--</li>--%>
    </ul>
</nav>

<!-- Header -->
<header id="top" class="header">
    <div class="text-vertical-center">
        <br> <br> <br> <br> <br> <br> <br> <br>
        <h1>Don't close your Browser!</h1>
        <h3>This is a phishing awareness training sent by a Social Engineering Simulation</h3>
        <br>
        <a href="#definition" class="btn btn-dark btn-lg">Learn how to detect phishing scams</a>
    </div>
</header>
<section id="definition" class="definition">
    <div class="col-md-5">
        <h3>"Social engineering is the art of manipulating people so they give up confidential information."</h3>
        <br>
        <h4>The types of information these criminals are seeking can vary, but when individuals are targeted the
            criminals are usually trying to trick you into giving them your passwords or bank information, or access your computer to
            secretly install malicious software–that will give them access to your passwords and bank information as
            well as giving them control over your computer.</h4>
    </div>
    <div class="col-md-7 text-center">
        <div class="row">
            <br>
            <video width="700" height="300" controls>
                <source src="<c:url value="/videos/Social_Engineering.mp4"/>" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </div>
</div>
</section>

<section id="about" class="section2">
    <div class="container">


        <div class="row">
            <div class="col-md-12">
                <h2>How to protect your self from Social Engineering.</h2>
                <hr>
            </div>
        </div>
        <div class="row">

            <div class="col-md-8">
                <ul>
                    <li><strong>DON'T RESPOND</strong>
                        - Don't respond to ANY email or social network post or message that asks for money
                        or confidential information. Thieves can hack email and social network accounts, and then pose
                        as a friend or family member in order to gain your trust.
                    </li>
                    <li>
                        <strong>DON'T ASSUME</strong>
                        - Don't assume that an unsolicited phone call or email is actually from a trusted
                        source. Thieves can research your purchases or donations, then pose as a business or charity you
                        trust. Or, they may pose as law enforcement, a bank officer or another trusted authority figure.
                        Just because they have bits of information about you or your past activities doesn't mean they
                        are legitimate.
                    </li>
                    <li><strong>VERIFY VERIFY VERIFY</strong>
                        - If someone on the phone, or a message in your inbox, is telling you there
                        is a problem with your online banking account, online auction account or credit card account,
                        don't give them additional information to “fix” the problem. Instead, hang up the phone or
                        delete the email and check those accounts directly by logging in normally or calling a published
                        customer service number.
                    </li>
                    <li>
                        <strong>DON'T USE KNOWN INFO</strong>
                        - Be conscious what can be learned about you. Many kinds of online
                        accounts, including online banking, use challenge questions as part of their security. Make sure
                        you don't choose responses that can be found online. For example, don't use your mother's maiden
                        name if it is mentioned on a social network profile; or the model of your first car, if you
                        discussed it on a forum. Thieves are very good at digging out those details from online
                        searches.
                    </li>
                    <li>
                        <strong>DON'T OPEN IT</strong>
                        - Remember, even the most innocent email attachments can be infected with computer
                        malware. Common and popular files like PDFs, JPGs and spreadsheets can provide a platform for
                        installing viruses or keystroke-logging malware on your computer. If you aren't certain the file
                        came from a legitimate business, charity or person, don't open it without verifying. Call them
                        and ask if they sent an email with an attachment.
                    </li>
                </ul>

                <p>The thieves are smart and very good at exploiting your honesty and natural cooperation. They can send
                    an email that looks like it came from a family member, or hijack your best friend's social network
                    account. Don't let your good nature become your downfall.The best way to avoid Social Engineering
                    schemes is to be cautious and suspicious of ANY request for
                    money, passwords, account numbers or other confidential information – no matter where it seems to be
                    coming from.
                </p>
            </div>
            <div class="col-md-4 text-center">
                <div class="row">
                    <video width="390" height="200" controls>
                        <source src="<c:url value="/videos/Biggest-Online-Threats.3gp"/>" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="row top-buffer">
                    <div class="col-md-12">

                        <a href="#services" class="btn btn-dark btn-lg btn-block">Types of attacks >></a>
                        <%--<button type="button" class="btn btn-dark btn-lg btn-block">Types of attacks >></button>--%>
                    </div>
                </div>
                <div class="row top-buffer">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-dark btn-lg btn-block">Social Engineering Examples >>
                        </button>
                    </div>
                </div>
                <%--</div>--%>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

<!-- About -->
<%--<section id="types" class="about">--%>
    <%--<div class="container">--%>
        <%--<div class="row">--%>
            <%--<div class="col-lg-12 text-center">--%>
                <%--<h2>Watch out for hoaxes, phishing and scams.</h2>--%>

                <%--<p class="lead">Online hoaxes are getting more sophisticated, making it tough to know whether an email,--%>
                    <%--SMS or website is real. It’s important you learn how to spot the fakes so you stay safer online.</p>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<!-- /.row -->--%>
    <%--</div>--%>
    <%--<!-- /.container -->--%>
<%--</section>--%>

<!-- Services -->
<!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
<section id="services" class="services bg-primary1">
    <div class="container">
        <div class="row">
            <div class="col col-md-offset-2 col-md-8 text-center">
                <h2>Watch out for hoaxes, phishing and scams.</h2>

                <p class="lead">Online hoaxes are getting more sophisticated, making it tough to know whether an email,
                    SMS or website is real. It’s important you learn how to spot the fakes so you stay safer online.</p>
            </div>
        </div>
        <!-- /.row -->
    </div>
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
<%--<aside class="callout">--%>
<%--<div class="text-vertical-center">--%>
<%--<h1>Vertically Centered Text</h1>--%>
<%--</div>--%>
<%--</aside>--%>

<!-- Portfolio -->
<section id="portfolio" class="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1 text-center">
                <h2>Social Engineering Examples</h2>
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
<section id="slider">
    <div class="container" style="height: 100vh">
        <br>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">

                <div class="item active">
                    <img src="<c:url value="/images/portfolio-1.jpg" />" alt="Chania" width="460" height="345">
                    <div class="carousel-caption">
                        <h3>Chania</h3>
                        <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                    </div>
                </div>

                <div class="item">
                    <img src="<c:url value="/images/portfolio-2.jpg" />" alt="Chania" width="460" height="345">
                    <div class="carousel-caption">
                        <h3>Chania</h3>
                        <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                    </div>
                </div>

                <div class="item">
                    <img src="<c:url value="/images/portfolio-3.jpg" />" alt="Flower" width="460" height="345">
                    <div class="carousel-caption">
                        <h3>Flowers</h3>
                        <p>Beatiful flowers in Kolymbari, Crete.</p>
                    </div>
                </div>

                <div class="item">
                    <img src="<c:url value="/images/portfolio-4.jpg" />" alt="Flower" width="460" height="345">
                    <div class="carousel-caption">
                        <h3>Flowers</h3>
                        <p>Beatiful flowers in Kolymbari, Crete.</p>
                    </div>
                </div>

            </div>

            <%--<a class="left carousel-control" href="#myCarousel" data-slide="prev"--%>
               <%--onclick="$('#myCarousel').carousel('prev')">‹</a>--%>
            <%--<a class="right carousel-control" href="#myCarousel" data-slide="next"--%>
               <%--onclick="$('#myCarousel').carousel('next')">›</a>--%>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" onclick="$('#myCarousel').carousel('prev')">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" onclick="$('#myCarousel').carousel('next')">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

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
