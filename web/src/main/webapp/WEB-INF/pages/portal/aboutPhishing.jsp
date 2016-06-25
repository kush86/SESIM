<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kusala
  Date: 2/10/16
  Time: 12:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>About Phishing</title>
    <link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
    <%--<link href="<c:url value="/css/styles.css" />" rel="stylesheet">--%>
</head>
<body>
<div class="row">
    <div class="container">

        <h3>Five Ways to Catch a Phish</h3>

        <p>
            With all of these convincing elements designed to spoof legitimate emails and confuse recipients, how can
            email users be sure messages like this one are fake? Here are five tips. </p>

        <p>
            <strong>1. Hover. </strong> Whatever you do, don't click on any of the links in the email, says Peck. You
            can and should, however, point your mouse at them and hover over them. </p>

        <p>
            When we hover over the "Secure Online Chat" and "www.americanexpress.com/case" links, we see that those
            links don't direct to the americanexpress.com domain. One directs to a website in Italy, as marked by the
            .it domain. The other points to a .us domain. Links that don't go to the legitimate domain of the business
            are telltale signs of phishing emails. </p>

        <p>
            <strong>2. Copy and paste. </strong> If you can't see the URL where the links direct when you hover over
            them, Peck suggests copying and pasting the link into a Microsoft Word document. Right click on the pasted
            link and select "Edit Hyperlink" from the menu that appears. Selecting "Edit Hyperlink" will open a pop-up
            window in Word that shows in the "Address" field the web address to which the link directs. </p>

        <p>
            <strong>3. Investigate the email's properties. </strong> Outlook users who have opened the suspicious email
            can go to the "File" tab and select "Properties." In the "Properties" pop-up window that appears, Peck says
            to look at the box at the bottom of the window labeled "Internet headers." This box shows the path the email
            took to reach the end-user, he says. "Look at the originating systems. If they're not from American Express,
            Constant Contact or other trusted email blast systems, those are tipoffs that it's a phishing email," he
            adds. </p>

        <p>
            <strong>4. Act on information that you know for sure is trustworthy. </strong> If your bank or credit card
            company is sending you an email regarding a fraud alert, you ought to see that same fraud alert on your bank
            or credit card company's legitimate website, says Peck. If you're at all uncertain, Peck recommends calling
            the phone number on the back of your credit card. "Always work on information that you have a lot more
            reason to trust," he adds. </p>

        <p>
            <strong>5. When in doubt, throw it out.</strong> The best defense against phishing scams, Peck says, is to
            assume the email is untrustworthy and to pursue direct channels to businesses that you trust, such as your
            bank's 1-800 number. </p>
    </div>
    <div class="col-md-12"><img src="<c:url value="/images/Capture.PNG"/>"></div>

</div>
</body>
</html>
