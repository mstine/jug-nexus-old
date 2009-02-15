import org.eclipse.mylyn.wikitext.core.parser.MarkupParser
import org.eclipse.mylyn.wikitext.textile.core.TextileLanguage
import org.eclipse.mylyn.wikitext.core.parser.builder.HtmlDocumentBuilder

class TextileCodec {

  static encode = {str ->
    StringWriter out = new StringWriter()

    HtmlDocumentBuilder documentBuilder = new HtmlDocumentBuilder(out)
    documentBuilder.setEmitAsDocument(false)

    new MarkupParser(new TextileLanguage(), documentBuilder).parse(str)
    return out.toString()

  }

}