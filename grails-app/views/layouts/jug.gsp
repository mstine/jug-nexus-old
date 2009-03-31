<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Title      : Artificial
Version    : 1.0
Released   : 20070808
Description: A two-column, fixed-width with fluid header ideal for 1024x768 resolutions. Suitable for blogs and small websites.

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title><g:layoutTitle default="Memphis/Mid-South Java User Group" /></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" href="${createLinkTo(dir:'css',file:'default.css')}" />
<link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
<g:layoutHead />
<g:javascript library="application" />
</head>
<body>
<!-- start header -->
<div id="feeds">&nbsp;</div>
<hr />
<div id="logo">
	<h1><a href="">Memphis/Mid-South Java User Group</a></h1>
</div>
<hr />
<!-- end header -->
<!-- start menu -->
<div id="menu">
	<ul>
		<li><g:link controller="home">Home</g:link></li>
		<!--<li><a href="#">Blogs</a></li>-->
		<!--<li><a href="#">Member Benefits</a></li>-->
		<li><g:link controller="eventArchive">Meeting Archive</g:link></li>
		<!--<li><a href="#">Contact</a></li>-->
	</ul>
</div>
<!-- end menu -->
<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
      <g:layoutBody />
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	<div id="sidebar">
		<ul>
            <li id="juggyElvis">
                <h2>Meet Juggy Elvis</h2><blockquote><img src="${createLinkTo(dir:'images',file:'juggyElvis-medium.jpg')}" alt="Juggy Elvis"/></blockquote>

            </li>
            <li id="upcoming">
                <h2>Upcoming Meetings</h2>
                <ul>
                  <g:each in="${Event.findAllByArchived(false, [sort:'startTime', order:'asc'])}" var="event">
                    <li><a href="http://jugevents.org/jugevents/event/${event.jugEventsId}">
                      <g:formatDate format="MM/dd/yyyy" date="${event.startTime}"/><br/>
                      ${event.title}                    
                    </a></li>
                  </g:each>
                </ul>
            </li>
            <li id="groups">
                <h2>Google Group</h2>
                <table border=0 style="padding: 5px;" cellspacing=0>
                  <tr><td style="padding-left: 5px">
                  <strong>Subscribe to Memphis/Mid-South Java User Group</strong>
                  </td></tr>
                  <form action="http://groups.google.com/group/memphis-mid-south-jug/boxsubscribe">
                  <tr><td style="padding-left: 5px;">
                  Email: <input type=text name=email>
                  <input type=submit name="sub" value="Subscribe">
                  </td></tr>
                </form>
                <tr><td align=right>
                  <a href="http://groups.google.com/group/memphis-mid-south-jug">Visit this group</a>
                </td></tr>
                </table>
            </li>
            <li id="buttons" style="text-align: center; background-color:black;">
                <p><img src="${createLinkTo(dir:'images',file:'JUG_Button-full.jpg')}" alt="Official Java User Group"/></p>
                <p><a href="http://java.net"><img src="${createLinkTo(dir:'images',file:'javanet_button_170-full.jpg')}" alt="java.net member"/></a></p>
                <p><a href="https://jug-usa.dev.java.net/"><img src="${createLinkTo(dir:'images',file:'jug-usa-lg.jpg')}" width="160" height="80" alt="JUG-USA Affiliate"/></a></p>
            </li>
			<li id="sponsors" style="text-align: center;">
                <h2>Sponsors</h2>
                <h3>Principal Sponsor:</h3>
                <p><a href="http://www.vaco.com"><img src="${createLinkTo(dir:'images',file:'vac_tec_logo_rgb-medium.jpg')}" alt="Vaco Technology"/></a></p>
                <h3>Website Sponsor:</h3>
                <p><a href="http://www.eapps.com"><img src="${createLinkTo(dir:'images',file:'eapps_hosted_border.gif')}" alt="eApps.com"/></a></p>
                <h3>Additional Sponsors:</h3>
                <p><a href="http://www.jetbrains.com/?java_memphisJUG"><img src="${createLinkTo(dir:'images',file:'jetbrains_banner-full.jpg')}" alt="JetBrains"/></a></p>
                <p><a href="http://www.atlassian.com/"><img src="${createLinkTo(dir:'images',file:'UG-sponsor-small-full.jpg')}" alt="Atlassian"/></a></p>
                <p><a href="http://www.apress.com/"><img src="${createLinkTo(dir:'images',file:'ugmemberbanner-medium.jpg')}" alt="Apress"/></a></p>
                <p><a href="http://www.oreilly.com/"><img src="${createLinkTo(dir:'images',file:'ug_ad_125_viguy-full.jpg')}" alt="O'Reilly"/></a></p>
			</li>
            <li id="poweredBy" style="text-align: center;">
              <h2>Powered By</h2>
              <p><a href="http://grails.org"><img src="${createLinkTo(dir:'images',file:'grails_logo.jpg')}" width="140" height="42" alt="Grails"/></a></p>
            </li>
		</ul>
	</div>
	<!-- end sidebar -->
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->
<div id="footer">
	<p id="legal">&copy;2007 All Rights Reserved. Designed by <a href="http://www.freecsstemplates.org/">Free CSS Templates</a></p>
	<p id="links"><a href="#">Privacy</a> | <a href="#">Terms</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS</abbr></a></p>
</div>
</body>
</html>
