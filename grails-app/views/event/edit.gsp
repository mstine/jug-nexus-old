<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="jug"/>
  <title>Edit Event</title>
</head>
<body>
<div class="nav">
  <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}">Home</a></span>
  <span class="menuButton"><g:link class="list" action="list">Event List</g:link></span>
  <span class="menuButton"><g:link class="create" action="create">New Event</g:link></span>
</div>
<div class="body">
  <h1>Edit Event</h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <g:hasErrors bean="${eventInstance}">
    <div class="errors">
      <g:renderErrors bean="${eventInstance}" as="list"/>
    </div>
  </g:hasErrors>
  <g:form method="post">
    <input type="hidden" name="id" value="${eventInstance?.id}"/>
    <input type="hidden" name="version" value="${eventInstance?.version}"/>
    <div class="dialog">
      <table>
        <tbody>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="title">Title:</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'title', 'errors')}">
            <input type="text" id="title" name="title" value="${fieldValue(bean: eventInstance, field: 'title')}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="location">Location:</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'location', 'errors')}">
            <input type="text" id="location" name="location" value="${fieldValue(bean: eventInstance, field: 'location')}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="directions">Directions:</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'directions', 'errors')}">
            <textarea id="directions" name="directions" rows="5" cols="38">${fieldValue(bean: eventInstance, field: 'directions')}</textarea>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="startTime">Start Time:</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'startTime', 'errors')}">
            <g:datePicker name="startTime" value="${eventInstance?.startTime}"></g:datePicker>
          </td>
        </tr>


        <tr class="prop">
          <td valign="top" class="name">
            <label for="endTime">End Time:</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'endTime', 'errors')}">
            <g:datePicker name="endTime" value="${eventInstance?.endTime}"></g:datePicker>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="description">Description:</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'description', 'errors')}">
            <textarea id="description" name="description" rows="8" cols="38">${fieldValue(bean: eventInstance, field: 'description')}</textarea>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="onHomePage">On Home Page:</label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: eventInstance, field: 'onHomePage', 'errors')}">
            <g:checkBox name="onHomePage" value="${eventInstance?.onHomePage}"></g:checkBox>
          </td>
        </tr>

        </tbody>
      </table>
    </div>
    <div class="buttons">
      <span class="button"><g:actionSubmit class="save" value="Update"/></span>
      <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete"/></span>
    </div>
  </g:form>
</div>
</body>
</html>
