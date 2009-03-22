class Event {
  String title
  String location
  String directions
  Date startTime
  Date endTime
  String description
  Boolean onHomePage
  Boolean archived
  Long jugEventsId

  static constraints = {
    description(maxSize:4000)
  }
}
