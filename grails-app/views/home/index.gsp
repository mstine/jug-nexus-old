<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Memphis/Mid-South Java User Group</title>
  <meta name="layout" content="jug"/>
</head>
<body>
<div class="post">
  <h1 class="title">Welcome to the Memphis/Mid-South Java User Group!</h1>
  <div class="entry">
    <p>This site exists to support the newly formed Java User Group for the Memphis, TN and surrounding Mid-South
    (Western Tennessee, Eastern Arkansas, North Mississippi) area.
    Please join our Google Group and enjoy the benefits of being a JUG member!</p>
    <blockquote>
      <p><img src="images/memphis0skyline-large.jpg" alt="Memphis, TN Skyline"/></p>
    </blockquote>
  </div>
</div>
<div class="post">
  <h1 class="title">Upcoming Meetings:</h1>
</div>
<g:each in="${events}" var="event">
  <div class="post">
    <h2>${event.title}<br/><br/><g:formatDate format="EEEE, MMMM dd, yyyy" date="${event.startTime}"/><br/><g:formatDate format="h:mm" date="${event.startTime}"/>-<g:formatDate format="h:mm a" date="${event.endTime}"/></h2>
    <div class="entry">
       <h2 class="title">Speaker/Topic:</h2>
       <p>${event.description.encodeAsTextile()}</p>
       <h2 class="title">Location/Directions:</h2>
       <p>${event.location}</p>
       <p>${event.directions.encodeAsTextile()}</p>
    </div>
  </div>
</g:each>
</body>
</html>