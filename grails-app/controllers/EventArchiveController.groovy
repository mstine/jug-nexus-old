class EventArchiveController {

    def index = {
      [events:Event.findAllByArchived(true, [sort:'startTime', order:'desc'])]        
    }
}
