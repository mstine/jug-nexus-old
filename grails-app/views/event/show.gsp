<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="jug"/>
  <title>Show Event</title>
</head>
<body>
<div class="nav">
  <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}">Home</a></span>
  <span class="menuButton"><g:link class="list" action="list">Event List</g:link></span>
  <span class="menuButton"><g:link class="create" action="create">New Event</g:link></span>
</div>
<div class="body">
  <h1>Event ID: ${event.id}</h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <div class="dialog">
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
  </div>
  <div class="buttons">
    <g:form>
      <input type="hidden" name="id" value="${event?.id}"/>
      <span class="button"><g:actionSubmit class="edit" value="Edit"/></span>
      <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete"/></span>
    </g:form>
  </div>
</div>
</body>
</html>
