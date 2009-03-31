class HomeController {

    def index = {
      [events:Event.findAllByOnHomePage(true, [sort:'startTime', order:'asc'])]
    }
}
