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
    <%--<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"--%>
    <%--rel="stylesheet" type="text/css">--%>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <!--<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>-->
    <!--<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>-->
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
        <br> <br> <br> <br> <br>

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
            criminals are usually trying to trick you into giving them your passwords or bank information, or access
            your computer to
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
                        <source src="<c:url value="/videos/Biggest-Online-Threats.mp4"/>" type="video/mp4">
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
                        <a href="#example_gallery" class="btn btn-dark btn-lg btn-block">Social Engineering Examples
                            >></a>
                        <%--<button type="button" class="btn btn-dark btn-lg btn-block">Social Engineering Examples >>--%>
                        <%--</button>--%>
                    </div>
                </div>
                <div class="row top-buffer">
                    <div class="col-md-12">
                        <a href="#instructions_gallery" class="btn btn-dark btn-lg btn-block">
                            Know wow to catch a phish!>></a>
                    </div>
                </div>
                <%--</div>--%>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

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
                                <a href="#example_gallery" class="btn btn-dark">Learn More</a>
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

                                <a href="#example_gallery" class="btn btn-dark">Learn More</a>
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
                                <a href="#example_gallery" class="btn btn-dark">Learn More</a>
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

<section id="example_gallery">
    <div class="container">
        <center><h2>Social Engineering Examples</h2></center>
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">Email Spams</h3>

                <div class="panel-body">
                    <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                           data-title="An email with an attached HTML file"
                           data-caption="A phishing attack using HTML attachments to target the customers of a specific
                                organization is often a means of extracting a wide range of financial information from
                                victims, not of all of which necessarily relates to the company used in the scam."
                           data-image="<c:url value="/images/examples/amazon_spam.jpg" />"
                           data-target="#image-gallery">
                            <img class="img-responsive" src="<c:url value="/images/examples/amazon_spam.jpg" />"
                                 alt="Email spam">
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                           data-title="An email with an attached HTML file"
                           data-caption="A phishing attack using HTML attachments to target the customers of a specific
                                organization is often a means of extracting a wide range of financial information from
                                victims, not of all of which necessarily relates to the company used in the scam."
                           data-image="<c:url value="/images/examples/american_express_phishing.jpg" />"
                           data-target="#image-gallery">
                            <img class="img-responsive"
                                 src="<c:url value="/images/examples/american_express_phishing.jpg" />"
                                 alt="Email spam">
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                           data-title="Political Events used for spam - Ebola virus"
                           data-caption="The Ebola epidemic also attracted the attention of spammers. “Nigerians” sent out emails
                                on behalf of infected Africans who allegedly wanted to leave their fortune to charity.
                                The fraudsters came up with a new twist on the story which invited recipients to
                                participate as a guest at a World Health Organization conference. The proposed fee was
                                350,000 and a car for the job as a WHO representative in the UK."
                           data-image="<c:url value="/images/examples/ebola_virus_spam.jpg" />"
                           data-target="#image-gallery">
                            <img class="img-responsive" src="<c:url value="/images/examples/ebola_virus_spam.jpg" />"
                                 alt="Email spam">
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                        <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                           data-title="FIFA world cup lottery spam email"
                           data-caption="We also saw many fraudulent emails informing recipients that they had won an official
                       FIFA World Cup lottery. Of course, to get his money, the ‘winner’ faced a few minor preliminary expenses.
                        But, of course, these so-called winners would never see any money from a competition that they had
                         never entered in the first place."
                           data-image="<c:url value="/images/examples/lottery_spam.jpg" />"
                           data-target="#image-gallery">
                            <img class="img-responsive" src="<c:url value="/images/examples/lottery_spam.jpg" />"
                                 alt="Email spam">
                        </a>
                    </div>
                </div>

            </div>
        </div>


        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">Fake notifications from mobile applications</h3>

                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                       data-title="Viber fake notification"
                       data-caption="The notification of the voice message supposedly
                       sent via Viber contains a “Listen to Voice Message” button that initiates the download of a malicious archive."
                       data-image="<c:url value="/images/examples/viber_spam.jpg" />"
                       data-target="#image-gallery">
                        <img class="img-responsive" src="<c:url value="/images/examples/viber_spam.jpg" />"
                             alt="Email spam">
                    </a>
                </div>
                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                       data-title="Fake notification Email for WhatsApp"
                       data-caption="There can’t be emails telling users that they’ve received an image via WhatsApp because
                       registration on WhatsApp does not require an email address."
                       data-image="<c:url value="/images/examples/whatsapp_spam.jpg" />"
                       data-target="#image-gallery">
                        <img class="img-responsive" src="<c:url value="/images/examples/whatsapp_spam.jpg" />"
                             alt="Email spam">
                    </a>
                </div>
                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                       data-title="Google hangout fake notification"
                       data-caption="A notification about a voice message allegedly sent via Hangouts contains a hyperlink
                       disguised as the “Play” button. After clicking “Play”, instead of
                       hearing the voice message the user is sent to a compromised legitimate site from which integrated
                       JavaScript redirects him to an advertising page."
                       data-image="<c:url value="/images/examples/hangout_spam.jpg" />"
                       data-target="#image-gallery">
                        <img class="img-responsive" src="<c:url value="/images/examples/hangout_spam.jpg" />"
                             alt="Email spam">
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">SMS spams</h3>

                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                       data-title="Spam SMS"
                       data-caption="Spam SMS trying to trick the user get the user to click on n phishing URL"
                       data-image="<c:url value="/images/examples/smsscam1.png" />"
                       data-target="#image-gallery">
                        <img class="img-responsive" src="<c:url value="/images/examples/smsscam1.png" />"
                             alt="SMS scam">
                    </a>
                </div>
                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                       data-title="Iphone phishing spam SMS"
                       data-caption="The phishing scam comes in the form of a text message pretending to be from Apple and warns customers their Apple ID is about to expire."
                       data-image="<c:url value="/images/examples/apple_sms.jpg" />"
                       data-target="#image-gallery">
                        <img class="img-responsive" src="<c:url value="/images/examples/apple_sms.jpg" />"
                             alt="SMS scam">
                    </a>
                </div>
                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                       data-title="Lottery win SMS spam"
                       data-caption="Lottery win SMS spam"
                       data-image="<c:url value="/images/examples/lottery_spam.jpg" />"
                       data-target="#image-gallery">
                        <img class="img-responsive" src="<c:url value="/images/examples/lottery_spam.jpg" />"
                             alt="Email spam">
                    </a>
                </div>
            </div>
        </div>
        <div class="modal fade" id="image-gallery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span
                                class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="image-gallery-title"></h4>
                    </div>
                    <div class="modal-body">
                        <img id="image-gallery-image" class="img-responsive" src="">
                    </div>
                    <div class="modal-footer">

                        <div class="col-md-2">
                            <button type="button" class="btn btn-primary" id="show-previous-image">Previous</button>
                        </div>

                        <div class="col-md-8 text-justify" id="image-gallery-caption">
                            This text will be overwritten by jQuery
                        </div>

                        <div class="col-md-2">
                            <button type="button" id="show-next-image" class="btn btn-default">Next</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>

<section id="instructions_gallery">
    <div class="container">
        <%--<center><h2>Know how to catch a Phish!</h2></center>--%>
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">Know how to catch a Phish!</h3>

                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                       data-title="Identify a phishing email"
                       data-caption=""
                       data-image="<c:url value="/images/examples/identify_phishing.jpg" />"
                       data-target="#image-gallery">
                        <img class="img-responsive" src="<c:url value="/images/examples/identify_phishing.jpg" />"
                             alt="Email spam">
                    </a>
                </div>
                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                       data-title="An example of a phishing email"
                       data-caption=""
                       data-image="<c:url value="/images/examples/email_example1.PNG" />"
                       data-target="#image-gallery">
                        <img class="img-responsive"
                             src="<c:url value="/images/examples/email_example1.PNG" />"
                             alt="Email spam">
                    </a>
                </div>
                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                       data-title="Vishing (voice phishing) example"
                       data-caption=""
                       data-image="<c:url value="/images/examples/phishing-and-vishing-campaign-attack.jpg" />"
                       data-target="#image-gallery">
                        <img class="img-responsive"
                             src="<c:url value="/images/examples/phishing-and-vishing-campaign-attack.jpg" />"
                             alt="Email spam">
                    </a>
                </div>
                <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <a class="thumbnail" href="#" data-image-id="" data-toggle="modal"
                       data-title="PayPal phishing"
                       data-caption=""
                       data-image="<c:url value="/images/examples/email_example2.jpg" />"
                       data-target="#image-gallery">
                        <img class="img-responsive" src="<c:url value="/images/examples/email_example2.jpg" />"
                             alt="Email spam">
                    </a>
                </div>

            </div>
        </div>
    </div>
</section>

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

    $(document).ready(function () {

        loadGallery(true, 'a.thumbnail');

        //This function disables buttons when needed
        function disableButtons(counter_max, counter_current) {
            $('#show-previous-image, #show-next-image').show();
            if (counter_max == counter_current) {
                $('#show-next-image').hide();
            } else if (counter_current == 1) {
                $('#show-previous-image').hide();
            }
        }

        /**
         *
         * @param setIDs        Sets IDs when DOM is loaded. If using a PHP counter, set to false.
         * @param setClickAttr  Sets the attribute for the click handler.
         */

        function loadGallery(setIDs, setClickAttr) {
            var current_image,
                    selector,
                    counter = 0;

            $('#show-next-image, #show-previous-image').click(function () {
                if ($(this).attr('id') == 'show-previous-image') {
                    current_image--;
                } else {
                    current_image++;
                }

                selector = $('[data-image-id="' + current_image + '"]');
                updateGallery(selector);
            });

            function updateGallery(selector) {
                var $sel = selector;
                current_image = $sel.data('image-id');
                $('#image-gallery-caption').text($sel.data('caption'));
                $('#image-gallery-title').text($sel.data('title'));
                $('#image-gallery-image').attr('src', $sel.data('image'));
                disableButtons(counter, $sel.data('image-id'));
            }

            if (setIDs == true) {
                $('[data-image-id]').each(function () {
                    counter++;
                    $(this).attr('data-image-id', counter);
                });
            }
            $(setClickAttr).on('click', function () {
                updateGallery($(this));
            });
        }
    });

</script>

</body>

</html>
