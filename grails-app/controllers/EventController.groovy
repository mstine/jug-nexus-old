import org.codehaus.groovy.grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

class EventController {

  def index = { redirect(action: list, params: params) }

  // the delete, save and update actions only accept POST requests
  static allowedMethods = [delete: 'POST', save: 'POST', update: 'POST']

  @Secured (['ROLE_ADMIN'])
  def list = {
    params.max = Math.min(params.max ? params.max.toInteger() : 10, 100)
    [eventInstanceList: Event.list(params), eventInstanceTotal: Event.count()]
  }

  def show = {
    def eventInstance = Event.get(params.id)

    if (!eventInstance) {
      flash.message = "Event not found with id ${params.id}"
      redirect(action: list)
    }
    else { return [event: eventInstance] }
  }

  @Secured (['ROLE_ADMIN'])
  def delete = {
    def eventInstance = Event.get(params.id)
    if (eventInstance) {
      try {
        eventInstance.delete()
        flash.message = "Event ${params.id} deleted"
        redirect(action: list)
      }
      catch (org.springframework.dao.DataIntegrityViolationException e) {
        flash.message = "Event ${params.id} could not be deleted"
        redirect(action: show, id: params.id)
      }
    }
    else {
      flash.message = "Event not found with id ${params.id}"
      redirect(action: list)
    }
  }

  @Secured (['ROLE_ADMIN'])
  def edit = {
    def eventInstance = Event.get(params.id)

    if (!eventInstance) {
      flash.message = "Event not found with id ${params.id}"
      redirect(action: list)
    }
    else {
      return [eventInstance: eventInstance]
    }
  }

  @Secured (['ROLE_ADMIN'])
  def update = {
    def eventInstance = Event.get(params.id)
    if (eventInstance) {
      if (params.version) {
        def version = params.version.toLong()
        if (eventInstance.version > version) {

          eventInstance.errors.rejectValue("version", "event.optimistic.locking.failure", "Another user has updated this Event while you were editing.")
          render(view: 'edit', model: [eventInstance: eventInstance])
          return
        }
      }
      eventInstance.properties = params
      if (!eventInstance.hasErrors() && eventInstance.save()) {
        flash.message = "Event ${params.id} updated"
        redirect(action: show, id: eventInstance.id)
      }
      else {
        render(view: 'edit', model: [eventInstance: eventInstance])
      }
    }
    else {
      flash.message = "Event not found with id ${params.id}"
      redirect(action: edit, id: params.id)
    }
  }

  @Secured (['ROLE_ADMIN'])
  def create = {
    def eventInstance = new Event()
    eventInstance.properties = params
    return ['eventInstance': eventInstance]
  }

  @Secured (['ROLE_ADMIN'])
  def save = {
    def eventInstance = new Event(params)
    if (!eventInstance.hasErrors() && eventInstance.save()) {
      flash.message = "Event ${eventInstance.id} created"
      redirect(action: show, id: eventInstance.id)
    }
    else {
      render(view: 'create', model: [eventInstance: eventInstance])
    }
  }

  def preview = {
    render(template: 'textile', model: [text: params.text])
  }
}
