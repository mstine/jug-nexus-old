<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="jug"/>
  <title>Event List</title>
</head>
<body>
<div class="nav">
  <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}">Home</a></span>
  <span class="menuButton"><g:link class="create" action="create">New Event</g:link></span>
</div>
<div class="body">
  <h1>Event List</h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <div class="list">
    <table>
      <thead>
      <tr>

        <g:sortableColumn property="id" title="ID"/>

        <g:sortableColumn property="startTime" title="Date"/>

        <g:sortableColumn property="title" title="Title"/>

        <g:sortableColumn property="jugEventsId" title="JUGEvents ID"/>                             

        <g:sortableColumn property="onHomePage" title="Home Page?"/>

        <g:sortableColumn property="onHomePage" title="Archived?"/>


      </tr>
      </thead>
      <tbody>
      <g:each in="${eventInstanceList}" status="i" var="eventInstance">
        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

          <td><g:link action="show" id="${eventInstance.id}">${fieldValue(bean: eventInstance, field: 'id')}</g:link></td>

          <td><g:formatDate format="MM/dd/yyyy" date="${eventInstance.startTime}"/></td>

          <td>${fieldValue(bean: eventInstance, field: 'title')}</td>

          <td>${fieldValue(bean: eventInstance, field: 'jugEventsId')}</td>

          <td>${fieldValue(bean: eventInstance, field: 'onHomePage')}</td>

          <td>${fieldValue(bean: eventInstance, field: 'archived')}</td>


        </tr>
      </g:each>
      </tbody>
    </table>
  </div>
  <div class="paginateButtons">
    <g:paginate total="${eventInstanceTotal}"/>
  </div>
</div>
</body>
</html>
