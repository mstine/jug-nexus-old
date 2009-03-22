<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <title>Meeting Archive</title>
    <meta name="layout" content="jug"/>
  </head>
  <body>
    <h1>Meeting Archive:</h1>

    <ul>
      <g:each in="${events}" var="event">
        <li><g:link controller='event' action='show' id="${event.id}"><g:formatDate format="MMMM dd, yyyy" date="${event.startTime}"/> - ${event.title}</g:link></li>
      </g:each>
    </ul>
  </body>
</html>