import grails.util.Environment

class BootStrap {

  def authenticateService

  def init = {servletContext ->
    switch (Environment.current) {
      case Environment.DEVELOPMENT:
        configureForDevelopment()
        break
      case Environment.PRODUCTION:
        configureForProduction()
        break
    }
  }

  def destroy = {
  }

  def configureForProduction() { }

  def configureForDevelopment() {

    def authority = new Authority(authority: 'ROLE_ADMIN', description: 'Administrator Access!').save()

    def person = new Person(username: 'mstine',
            passwd: authenticateService.encodePassword('password'),
            userRealName: 'Matt Stine',
            description: 'Me',
            email: 'matt@dontmailme.com',
            emailShow: false,
            enabled: true)
    person.addToAuthorities(authority)
    person.save()

    def e1 = new Event()
    e1.title = 'The Lightning Round'
    e1.location = '160 Shadyac Ave., Memphis, TN 38105'
    e1.directions = '"Google Map to the Location":http://maps.google.com/maps/ms?ie=UTF8&hl=en&msa=0&msid=107005718688910374365.00043aabacd56f58697a9&t=h&z=19&om=1'
    e1.description = """This month there will be no long presentation - instead, we will have the entire presentation time consist of "Lightning Talks" given by you - the JUG members!

From Wikipedia: "A Lightning Talk is a short presentation given at a conference or similar forum. Unlike other presentations, lightning talks last only a few minutes and several will usually be delivered in a single period by different speakers."

In the past we have had three 5 minute slots prior to the long presentation. This month we will have TWELVE SLOTS!

"Let me know ASAP if you would like one of the slots":mailto:matt@mattstine.com. You'll need to get any PowerPoint slides to me in advance so that I can load them onto my laptop. For some great ideas on lightning talks, visit this Perl site: "http://perl.plover.com/lightning-talks.html":http://perl.plover.com/lightning-talks.html. Just swap out Perl for Java (although if you want to talk about Perl, be my guest)! ;-)

Another great resource to see many awesome lightning talks is the Java Posse channel on YouTube, containing the lightning talks from the 2008 Java Posse roundup: "http://www.youtube.com/javaposse":http://www.youtube.com/javaposse.

So far we have a few commitments already:

1. Matt Stine, St. Jude
2. Bhagavathy Krishna, St. Jude
3. Joel Neely, FedEx
4. Ernest McCracken, University of Memphis
5. Cynthia Pepper, St. Jude
6. Michael F. Hardy, Applied Enterprise Solutions
7. Diane Tabulog, Vaco Technology
8.
9.
10.
11.
12.

Please help us fill out this list!"""

    def dateFormat = 'MM/dd/yyyy HH:mm'
    e1.startTime = Date.parse(dateFormat, '02/19/2009 18:00')
    e1.endTime = Date.parse(dateFormat, '02/19/2009 20:30')
    e1.onHomePage = false
    e1.archived = true
    e1.jugEventsId = 13553
    e1.save()

    def e2 = new Event()
    e2.title = 'Career 2.0: Take Control of Your Life'
    e2.location = e1.location
    e2.directions = e1.directions
    e2.description = """<p><img src="http://www.memphisjug.org/339_Richardson_medium.jpg" style="float: right; margin-right: 5px; margin-bottom: 5px;"/>Our speaker for this event will be Jared Richardson. Jared is a speaker, consultant, and mentor with NFJS One. Jared has been in the industry for more than fifteen years as a consultant, developer, tester, and manager.
</p><p>As a recognized expert in the software industry, he has worked with both startups and software giants. He's been involved with various open source projects, with roles from contributer to founder. Jared recently founded the Agile RTP users group as a local outlet for the agile community in North Carolina.
</p><p>He's a co-author of the best selling book <a href="http://pragmaticprogrammer.com/titles/prj">Ship It! A Practical Guide to Successful Software Projects</a>, and contributor to the No Fluff Just Stuff Anthology 2006 and 2007 editions.
</p><p>Jared speaks frequently at the No Fluff Just Stuff travelling software symposiums all over the United States and at other software conferences and users groups. Agile Artisans also matches great speakers with companies and conferences.
</p><p>Born in Burlington, North Carolina, Jared is one of the few developers in the state of North Carolina who didn't move there. He earned his Computer Science degree at NC State University and cut his teeth in the Smalltalk community. He sold his first software package while he was still in college… and got an 'A' for the project. Since becoming an independent consultant Jared spends most of his time trying to avoid mowing the grass.
</p><p>Jared can be found online at <a href="http://agileartisans.com/">Agile Artisans</a>.
</p><p>Jared's topic will be: <strong>Career 2.0: Take Control of Your Life</strong>
</p><p>              Has your career been a random product of your manager's whims or company's needs? Never rely on your company to keep your skills current and marketable. Take control of your own career with a proven strategy.
</p><p>              These are solid, repeatable steps to get your career in the trajectory you want. The first step is deciding where you want to go. We'll walk through creating a long-term plan, then break it down into manageable steps. Learn to lead within your own company, then stretch out to your local, regional and national community, building your reputation as you go. From coding to writing to speaking, each step will move you closer to where you want to be: in a position of having options and in control of your career.
</p>"""
    e2.startTime = Date.parse(dateFormat, '04/23/2009 18:00')
    e2.endTime = Date.parse(dateFormat, '04/23/2009 20:30')
    e2.onHomePage = true
    e2.archived = false
    e2.jugEventsId = 13556
    e2.save()

    def e3 = new Event()
    e3.title = 'An Introduction to the Java Message Service (JMS) and Message Driven POJOs'
    e3.location = e1.location
    e3.directions = e1.directions
    e3.description = """Our speaker for this event is Matt Stine. Matt is the Group Leader of Research Application Development in the Research Informatics Division of Information Sciences at St. Jude Children's Research Hospital here in Memphis, TN. Matt has been developing and supporting Java EE-based applications in support of life sciences research for St. Jude since 2001. Matt wears many hats within the RAD group - on any given day he may be a project manager, software architect, business analyst, supervisor, or just plain writing code. Matt is also a committer and key contributor to St. Jude's open source shared resource management system, STJUDE-SRM, is a DZone MVP, and is the founding member of the Memphis/Mid-South JUG. Matt earned his Bachelor of Science in Computer Science from the University of Mississippi, and was a graduating member of the inaugural class of the Sally McDonnell-Barksdale Honors College. You can learn more about Matt and read his blogs at "http://www.mattstine.com":http://www.mattstine.com.

Matt's topic will be: *An Introduction to the Java Message Service (JMS) and Message Driven POJOs*."""
    e3.startTime = Date.parse(dateFormat, '03/19/2009 18:00')
    e3.endTime = Date.parse(dateFormat, '03/19/2009 20:30')
    e3.onHomePage = false
    e3.archived = true
    e3.jugEventsId = 14834
    e3.save()

  }
} 