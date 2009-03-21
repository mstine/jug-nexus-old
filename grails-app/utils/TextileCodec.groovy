import com.plink.plextile.TextParser

class TextileCodec {

  static encode = {str ->
    new TextParser().parseTextile(str, true)
  }

}