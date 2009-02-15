class HomeController {

    def index = {
      [events:Event.findAllByOnHomePage(true)]    
    }
}
