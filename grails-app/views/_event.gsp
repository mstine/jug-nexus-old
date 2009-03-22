<div class="post">
  <h2>${event.title}<br/><br/><g:formatDate format="EEEE, MMMM dd, yyyy" date="${event.startTime}"/><br/><g:formatDate format="h:mm" date="${event.startTime}"/>-<g:formatDate format="h:mm a" date="${event.endTime}"/><br/><g:if test="${!event.archived}"><a href="http://jugevents.org/jugevents/event/${event.jugEventsId}">Click HERE to register!</a></g:if></h2>
  <div class="entry">
    <h2 class="title">Speaker/Topic:</h2>
    <p>${event.description.encodeAsTextile()}</p>
    <h2 class="title">Location/Directions:</h2>
    <p>${event.location}</p>
    <p>${event.directions.encodeAsTextile()}</p>
  </div>
</div>