<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="jug"/>
  <title>Show Event</title>
</head>
<body>
<g:ifAllGranted role="ROLE_ADMIN">
<div class="nav">
  <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}">Home</a></span>
  <span class="menuButton"><g:link class="list" action="list">Event List</g:link></span>
  <span class="menuButton"><g:link class="create" action="create">New Event</g:link></span>
</div>
</g:ifAllGranted>
<div class="body">
  <g:ifAllGranted role="ROLE_ADMIN">
    <h1>Event ID: ${event.id}</h1>
  </g:ifAllGranted>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <div class="dialog">
    <g:render template="/event" model="[event:event]"/>
  </div>
  <g:ifAllGranted role="ROLE_ADMIN">
    <div class="buttons">
      <g:form>
        <input type="hidden" name="id" value="${event?.id}"/>
        <span class="button"><g:actionSubmit class="edit" value="Edit"/></span>
        <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete"/></span>
      </g:form>
    </div>
  </g:ifAllGranted>
</div>
</body>
</html>
