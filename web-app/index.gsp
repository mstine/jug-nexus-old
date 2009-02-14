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
  <h2 class="title">Controllers:</h2>
    <div class="entry">
      <ul>
        <g:each var="c" in="${grailsApplication.controllerClasses}">
          <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
        </g:each>
      </ul>
    </div>
</div>
</body>
</html>