<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Memphis/Mid-South Java User Group</title>
  <meta name="layout" content="jug"/>
</head>
<body>
<div class="post">
  <h1 class="title">A group for Java developers from Memphis, TN, and the surrounding Mid-South</h1>
  <div class="entry">
    <p>This site exists to support the Java User Group for the Memphis, TN and surrounding Mid-South
    (Western Tennessee, Eastern Arkansas, North Mississippi) area.
    Please join our Google Group and enjoy the benefits of being a JUG member!</p>
    <blockquote>
      <p><img src="${resource(dir:'images', file:'memphis0skyline-large.jpg')}" alt="Memphis, TN Skyline"/></p>
    </blockquote>
  </div>
</div>
<div class="post">
  <h1 class="title">Upcoming Meetings:</h1>
</div>
<g:each in="${events}" var="event">
  <g:render template="/event" model="[event:event]"/>  
</g:each>
</body>
</html>