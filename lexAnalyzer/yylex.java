/* The following code was generated by JFlex 1.4.3 on 27/11/14 11:09 */

/* Taller de Diseño de Software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
  lexer.flex identifica y crea los simbolos 
  de los archivos fuentes mediante expresiones 
  regulares
  
*/

package lexAnalyzer;
import java_cup.runtime.Symbol;
import java.io.*;
import ir.ast.*;
import syntaxAnalyzer.sym;

/**
 * This class is a scanner generated by 
 * <a href="http://www.jflex.de/">JFlex</a> 1.4.3
 * on 27/11/14 11:09 from the specification file
 * <tt>lexAnalyzer/lexer.flex</tt>
 */
public class yylex implements java_cup.runtime.Scanner {

  /** This character denotes the end of file */
  public static final int YYEOF = -1;

  /** initial size of the lookahead buffer */
  private static final int ZZ_BUFFERSIZE = 16384;

  /** lexical states */
  public static final int C_COMMENT = 2;
  public static final int YYINITIAL = 0;

  /**
   * ZZ_LEXSTATE[l] is the state in the DFA for the lexical state l
   * ZZ_LEXSTATE[l+1] is the state in the DFA for the lexical state l
   *                  at the beginning of a line
   * l is of the form l = 2*k, k a non negative integer
   */
  private static final int ZZ_LEXSTATE[] = { 
     0,  0,  1, 1
  };

  /** 
   * Translates characters to character classes
   */
  private static final String ZZ_CMAP_PACKED = 
    "\11\0\1\3\1\5\2\0\1\3\22\0\1\3\1\12\1\54\2\0"+
    "\1\15\1\14\1\0\1\22\1\23\1\6\1\16\1\21\1\17\1\53"+
    "\1\4\12\2\1\0\1\20\1\7\1\11\1\10\2\0\32\1\1\24"+
    "\1\0\1\25\1\0\1\1\1\0\1\34\1\30\1\44\1\50\1\33"+
    "\1\47\1\1\1\52\1\41\1\1\1\43\1\32\1\1\1\35\1\31"+
    "\2\1\1\40\1\45\1\37\1\46\1\42\1\51\1\36\2\1\1\26"+
    "\1\13\1\27\uff82\0";

  /** 
   * Translates characters to character classes
   */
  private static final char [] ZZ_CMAP = zzUnpackCMap(ZZ_CMAP_PACKED);

  /** 
   * Translates DFA states to action switch labels.
   */
  private static final int [] ZZ_ACTION = zzUnpackAction();

  private static final String ZZ_ACTION_PACKED_0 =
    "\2\0\1\1\1\2\1\3\1\4\1\5\1\6\1\7"+
    "\1\10\1\11\1\12\2\1\1\13\1\14\1\15\1\16"+
    "\1\17\1\20\1\21\1\22\1\23\1\24\1\25\11\2"+
    "\1\1\1\26\1\27\1\26\1\0\1\4\1\30\1\31"+
    "\1\32\1\33\1\34\1\35\1\36\1\37\1\40\7\2"+
    "\1\41\7\2\1\0\1\42\1\43\1\44\6\2\1\45"+
    "\3\2\1\46\5\2\1\47\1\2\1\50\1\2\1\51"+
    "\5\2\1\52\3\2\1\53\1\54\1\55\2\2\1\56"+
    "\1\2\1\57\3\2\1\60\1\2\1\61";

  private static int [] zzUnpackAction() {
    int [] result = new int[112];
    int offset = 0;
    offset = zzUnpackAction(ZZ_ACTION_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAction(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /** 
   * Translates a state to a row index in the transition table
   */
  private static final int [] ZZ_ROWMAP = zzUnpackRowMap();

  private static final String ZZ_ROWMAP_PACKED_0 =
    "\0\0\0\55\0\132\0\207\0\264\0\132\0\341\0\132"+
    "\0\u010e\0\u013b\0\u0168\0\u0195\0\u01c2\0\u01ef\0\132\0\u021c"+
    "\0\u0249\0\132\0\132\0\132\0\132\0\132\0\132\0\132"+
    "\0\132\0\u0276\0\u02a3\0\u02d0\0\u02fd\0\u032a\0\u0357\0\u0384"+
    "\0\u03b1\0\u03de\0\u040b\0\132\0\132\0\u0438\0\u0465\0\u0492"+
    "\0\132\0\132\0\132\0\132\0\132\0\132\0\132\0\132"+
    "\0\132\0\u04bf\0\u04ec\0\u0519\0\u0546\0\u0573\0\u05a0\0\u05cd"+
    "\0\207\0\u05fa\0\u0627\0\u0654\0\u0681\0\u06ae\0\u06db\0\u0708"+
    "\0\u040b\0\132\0\132\0\u0465\0\u0735\0\u0762\0\u078f\0\u07bc"+
    "\0\u07e9\0\u0816\0\207\0\u0843\0\u0870\0\u089d\0\207\0\u08ca"+
    "\0\u08f7\0\u0924\0\u0951\0\u097e\0\207\0\u09ab\0\207\0\u09d8"+
    "\0\207\0\u0a05\0\u0a32\0\u0a5f\0\u0a8c\0\u0ab9\0\207\0\u0ae6"+
    "\0\u0b13\0\u0b40\0\207\0\207\0\207\0\u0b6d\0\u0b9a\0\207"+
    "\0\u0bc7\0\207\0\u0bf4\0\u0c21\0\u0c4e\0\207\0\u0c7b\0\207";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[112];
    int offset = 0;
    offset = zzUnpackRowMap(ZZ_ROWMAP_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackRowMap(String packed, int offset, int [] result) {
    int i = 0;  /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int high = packed.charAt(i++) << 16;
      result[j++] = high | packed.charAt(i++);
    }
    return j;
  }

  /** 
   * The transition table of the DFA
   */
  private static final int [] ZZ_TRANS = zzUnpackTrans();

  private static final String ZZ_TRANS_PACKED_0 =
    "\1\3\1\4\1\5\1\6\1\7\1\6\1\10\1\11"+
    "\1\12\1\13\1\14\1\15\1\16\1\17\1\20\1\21"+
    "\1\22\1\23\1\24\1\25\1\26\1\27\1\30\1\31"+
    "\1\32\2\4\1\33\3\4\1\34\1\35\1\36\1\37"+
    "\1\4\1\40\2\4\1\41\1\4\1\42\1\4\1\3"+
    "\1\43\5\44\1\45\1\46\46\44\56\0\2\4\25\0"+
    "\23\4\4\0\1\5\50\0\1\47\5\0\1\50\1\0"+
    "\1\51\57\0\1\52\54\0\1\53\54\0\1\54\54\0"+
    "\1\55\56\0\1\56\55\0\1\57\51\0\1\60\54\0"+
    "\1\61\44\0\2\4\25\0\1\4\1\62\6\4\1\63"+
    "\12\4\3\0\2\4\25\0\2\4\1\64\3\4\1\65"+
    "\14\4\3\0\2\4\25\0\10\4\1\66\12\4\3\0"+
    "\2\4\25\0\3\4\1\67\17\4\3\0\2\4\25\0"+
    "\5\4\1\70\11\4\1\71\3\4\3\0\2\4\25\0"+
    "\1\4\1\72\21\4\3\0\2\4\25\0\1\4\1\73"+
    "\1\74\20\4\3\0\2\4\25\0\1\4\1\75\1\76"+
    "\1\4\1\77\16\4\3\0\2\4\25\0\22\4\1\100"+
    "\2\0\54\101\1\102\4\0\1\103\52\0\1\104\52\0"+
    "\5\50\1\0\47\50\1\0\2\4\25\0\1\4\1\105"+
    "\21\4\3\0\2\4\25\0\3\4\1\106\17\4\3\0"+
    "\2\4\25\0\15\4\1\107\5\4\3\0\2\4\25\0"+
    "\7\4\1\110\13\4\3\0\2\4\25\0\16\4\1\111"+
    "\4\4\3\0\2\4\25\0\7\4\1\112\13\4\3\0"+
    "\2\4\25\0\7\4\1\113\13\4\3\0\2\4\25\0"+
    "\11\4\1\114\11\4\3\0\2\4\25\0\5\4\1\115"+
    "\15\4\3\0\2\4\25\0\4\4\1\116\16\4\3\0"+
    "\2\4\25\0\10\4\1\117\12\4\3\0\2\4\25\0"+
    "\1\4\1\120\21\4\3\0\2\4\25\0\2\4\1\121"+
    "\20\4\3\0\2\4\25\0\11\4\1\122\11\4\3\0"+
    "\2\4\25\0\2\4\1\123\20\4\3\0\2\4\25\0"+
    "\4\4\1\124\16\4\3\0\2\4\25\0\3\4\1\125"+
    "\17\4\3\0\2\4\25\0\3\4\1\126\17\4\3\0"+
    "\2\4\25\0\3\4\1\127\17\4\3\0\2\4\25\0"+
    "\16\4\1\130\4\4\3\0\2\4\25\0\20\4\1\131"+
    "\2\4\3\0\2\4\25\0\7\4\1\132\13\4\3\0"+
    "\2\4\25\0\15\4\1\133\5\4\3\0\2\4\25\0"+
    "\4\4\1\134\16\4\3\0\2\4\25\0\15\4\1\111"+
    "\5\4\3\0\2\4\25\0\2\4\1\135\20\4\3\0"+
    "\2\4\25\0\3\4\1\136\17\4\3\0\2\4\25\0"+
    "\13\4\1\137\7\4\3\0\2\4\25\0\10\4\1\140"+
    "\12\4\3\0\2\4\25\0\10\4\1\141\12\4\3\0"+
    "\2\4\25\0\11\4\1\142\11\4\3\0\2\4\25\0"+
    "\15\4\1\143\5\4\3\0\2\4\25\0\7\4\1\144"+
    "\13\4\3\0\2\4\25\0\3\4\1\145\17\4\3\0"+
    "\2\4\25\0\4\4\1\146\16\4\3\0\2\4\25\0"+
    "\5\4\1\147\15\4\3\0\2\4\25\0\5\4\1\150"+
    "\15\4\3\0\2\4\25\0\5\4\1\151\15\4\3\0"+
    "\2\4\25\0\5\4\1\152\15\4\3\0\2\4\25\0"+
    "\11\4\1\153\11\4\3\0\2\4\25\0\16\4\1\154"+
    "\4\4\3\0\2\4\25\0\5\4\1\155\15\4\3\0"+
    "\2\4\25\0\3\4\1\156\17\4\3\0\2\4\25\0"+
    "\12\4\1\157\10\4\3\0\2\4\25\0\13\4\1\160"+
    "\7\4\2\0";

  private static int [] zzUnpackTrans() {
    int [] result = new int[3240];
    int offset = 0;
    offset = zzUnpackTrans(ZZ_TRANS_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackTrans(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      value--;
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /* error codes */
  private static final int ZZ_UNKNOWN_ERROR = 0;
  private static final int ZZ_NO_MATCH = 1;
  private static final int ZZ_PUSHBACK_2BIG = 2;

  /* error messages for the codes above */
  private static final String ZZ_ERROR_MSG[] = {
    "Unkown internal scanner error",
    "Error: could not match input",
    "Error: pushback value was too large"
  };

  /**
   * ZZ_ATTRIBUTE[aState] contains the attributes of state <code>aState</code>
   */
  private static final int [] ZZ_ATTRIBUTE = zzUnpackAttribute();

  private static final String ZZ_ATTRIBUTE_PACKED_0 =
    "\2\0\1\11\2\1\1\11\1\1\1\11\6\1\1\11"+
    "\2\1\10\11\12\1\2\11\1\1\1\0\1\1\11\11"+
    "\17\1\1\0\2\11\55\1";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[112];
    int offset = 0;
    offset = zzUnpackAttribute(ZZ_ATTRIBUTE_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAttribute(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }

  /** the input device */
  private java.io.Reader zzReader;

  /** the current state of the DFA */
  private int zzState;

  /** the current lexical state */
  private int zzLexicalState = YYINITIAL;

  /** this buffer contains the current text to be matched and is
      the source of the yytext() string */
  private char zzBuffer[] = new char[ZZ_BUFFERSIZE];

  /** the textposition at the last accepting state */
  private int zzMarkedPos;

  /** the current text position in the buffer */
  private int zzCurrentPos;

  /** startRead marks the beginning of the yytext() string in the buffer */
  private int zzStartRead;

  /** endRead marks the last character in the buffer, that has been read
      from input */
  private int zzEndRead;

  /** number of newlines encountered up to the start of the matched text */
  private int yyline;

  /** the number of characters up to the start of the matched text */
  private int yychar;

  /**
   * the number of characters from the last newline up to the start of the 
   * matched text
   */
  private int yycolumn;

  /** 
   * zzAtBOL == true <=> the scanner is currently at the beginning of a line
   */
  private boolean zzAtBOL = true;

  /** zzAtEOF == true <=> the scanner is at the EOF */
  private boolean zzAtEOF;

  /** denotes if the user-EOF-code has already been executed */
  private boolean zzEOFDone;

  /* user code: */
  private Symbol Symbol(int type){
    return new Symbol(type,yyline,yycolumn);
  }
  /* Crear un nuevo objeto java_cup.runtime.Symbol con información sobre el token actual con valor*/
  private Symbol Symbol(int type,Object value){
    return new Symbol(type,yyline,yycolumn,value);
  }


  /**
   * Creates a new scanner
   * There is also a java.io.InputStream version of this constructor.
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public yylex(java.io.Reader in) {
    this.zzReader = in;
  }

  /**
   * Creates a new scanner.
   * There is also java.io.Reader version of this constructor.
   *
   * @param   in  the java.io.Inputstream to read input from.
   */
  public yylex(java.io.InputStream in) {
    this(new java.io.InputStreamReader(in));
  }

  /** 
   * Unpacks the compressed character translation table.
   *
   * @param packed   the packed character translation table
   * @return         the unpacked character translation table
   */
  private static char [] zzUnpackCMap(String packed) {
    char [] map = new char[0x10000];
    int i = 0;  /* index in packed string  */
    int j = 0;  /* index in unpacked array */
    while (i < 126) {
      int  count = packed.charAt(i++);
      char value = packed.charAt(i++);
      do map[j++] = value; while (--count > 0);
    }
    return map;
  }


  /**
   * Refills the input buffer.
   *
   * @return      <code>false</code>, iff there was new input.
   * 
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  private boolean zzRefill() throws java.io.IOException {

    /* first: make room (if you can) */
    if (zzStartRead > 0) {
      System.arraycopy(zzBuffer, zzStartRead,
                       zzBuffer, 0,
                       zzEndRead-zzStartRead);

      /* translate stored positions */
      zzEndRead-= zzStartRead;
      zzCurrentPos-= zzStartRead;
      zzMarkedPos-= zzStartRead;
      zzStartRead = 0;
    }

    /* is the buffer big enough? */
    if (zzCurrentPos >= zzBuffer.length) {
      /* if not: blow it up */
      char newBuffer[] = new char[zzCurrentPos*2];
      System.arraycopy(zzBuffer, 0, newBuffer, 0, zzBuffer.length);
      zzBuffer = newBuffer;
    }

    /* finally: fill the buffer with new input */
    int numRead = zzReader.read(zzBuffer, zzEndRead,
                                            zzBuffer.length-zzEndRead);

    if (numRead > 0) {
      zzEndRead+= numRead;
      return false;
    }
    // unlikely but not impossible: read 0 characters, but not at end of stream    
    if (numRead == 0) {
      int c = zzReader.read();
      if (c == -1) {
        return true;
      } else {
        zzBuffer[zzEndRead++] = (char) c;
        return false;
      }     
    }

	// numRead < 0
    return true;
  }

    
  /**
   * Closes the input stream.
   */
  public final void yyclose() throws java.io.IOException {
    zzAtEOF = true;            /* indicate end of file */
    zzEndRead = zzStartRead;  /* invalidate buffer    */

    if (zzReader != null)
      zzReader.close();
  }


  /**
   * Resets the scanner to read from a new input stream.
   * Does not close the old reader.
   *
   * All internal variables are reset, the old input stream 
   * <b>cannot</b> be reused (internal buffer is discarded and lost).
   * Lexical state is set to <tt>ZZ_INITIAL</tt>.
   *
   * @param reader   the new input stream 
   */
  public final void yyreset(java.io.Reader reader) {
    zzReader = reader;
    zzAtBOL  = true;
    zzAtEOF  = false;
    zzEOFDone = false;
    zzEndRead = zzStartRead = 0;
    zzCurrentPos = zzMarkedPos = 0;
    yyline = yychar = yycolumn = 0;
    zzLexicalState = YYINITIAL;
  }


  /**
   * Returns the current lexical state.
   */
  public final int yystate() {
    return zzLexicalState;
  }


  /**
   * Enters a new lexical state
   *
   * @param newState the new lexical state
   */
  public final void yybegin(int newState) {
    zzLexicalState = newState;
  }


  /**
   * Returns the text matched by the current regular expression.
   */
  public final String yytext() {
    return new String( zzBuffer, zzStartRead, zzMarkedPos-zzStartRead );
  }


  /**
   * Returns the character at position <tt>pos</tt> from the 
   * matched text. 
   * 
   * It is equivalent to yytext().charAt(pos), but faster
   *
   * @param pos the position of the character to fetch. 
   *            A value from 0 to yylength()-1.
   *
   * @return the character at position pos
   */
  public final char yycharat(int pos) {
    return zzBuffer[zzStartRead+pos];
  }


  /**
   * Returns the length of the matched text region.
   */
  public final int yylength() {
    return zzMarkedPos-zzStartRead;
  }


  /**
   * Reports an error that occured while scanning.
   *
   * In a wellformed scanner (no or only correct usage of 
   * yypushback(int) and a match-all fallback rule) this method 
   * will only be called with things that "Can't Possibly Happen".
   * If this method is called, something is seriously wrong
   * (e.g. a JFlex bug producing a faulty scanner etc.).
   *
   * Usual syntax/scanner level error handling should be done
   * in error fallback rules.
   *
   * @param   errorCode  the code of the errormessage to display
   */
  private void zzScanError(int errorCode) {
    String message;
    try {
      message = ZZ_ERROR_MSG[errorCode];
    }
    catch (ArrayIndexOutOfBoundsException e) {
      message = ZZ_ERROR_MSG[ZZ_UNKNOWN_ERROR];
    }

    throw new Error(message);
  } 


  /**
   * Pushes the specified amount of characters back into the input stream.
   *
   * They will be read again by then next call of the scanning method
   *
   * @param number  the number of characters to be read again.
   *                This number must not be greater than yylength()!
   */
  public void yypushback(int number)  {
    if ( number > yylength() )
      zzScanError(ZZ_PUSHBACK_2BIG);

    zzMarkedPos -= number;
  }


  /**
   * Contains user EOF-code, which will be executed exactly once,
   * when the end of file is reached
   */
  private void zzDoEOF() throws java.io.IOException {
    if (!zzEOFDone) {
      zzEOFDone = true;
      yyclose();
    }
  }


  /**
   * Resumes scanning until the next regular expression is matched,
   * the end of input is encountered or an I/O-Error occurs.
   *
   * @return      the next token
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  public java_cup.runtime.Symbol next_token() throws java.io.IOException {
    int zzInput;
    int zzAction;

    // cached fields:
    int zzCurrentPosL;
    int zzMarkedPosL;
    int zzEndReadL = zzEndRead;
    char [] zzBufferL = zzBuffer;
    char [] zzCMapL = ZZ_CMAP;

    int [] zzTransL = ZZ_TRANS;
    int [] zzRowMapL = ZZ_ROWMAP;
    int [] zzAttrL = ZZ_ATTRIBUTE;

    while (true) {
      zzMarkedPosL = zzMarkedPos;

      boolean zzR = false;
      for (zzCurrentPosL = zzStartRead; zzCurrentPosL < zzMarkedPosL;
                                                             zzCurrentPosL++) {
        switch (zzBufferL[zzCurrentPosL]) {
        case '\u000B':
        case '\u000C':
        case '\u0085':
        case '\u2028':
        case '\u2029':
          yyline++;
          yycolumn = 0;
          zzR = false;
          break;
        case '\r':
          yyline++;
          yycolumn = 0;
          zzR = true;
          break;
        case '\n':
          if (zzR)
            zzR = false;
          else {
            yyline++;
            yycolumn = 0;
          }
          break;
        default:
          zzR = false;
          yycolumn++;
        }
      }

      if (zzR) {
        // peek one character ahead if it is \n (if we have counted one line too much)
        boolean zzPeek;
        if (zzMarkedPosL < zzEndReadL)
          zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        else if (zzAtEOF)
          zzPeek = false;
        else {
          boolean eof = zzRefill();
          zzEndReadL = zzEndRead;
          zzMarkedPosL = zzMarkedPos;
          zzBufferL = zzBuffer;
          if (eof) 
            zzPeek = false;
          else 
            zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        }
        if (zzPeek) yyline--;
      }
      zzAction = -1;

      zzCurrentPosL = zzCurrentPos = zzStartRead = zzMarkedPosL;
  
      zzState = ZZ_LEXSTATE[zzLexicalState];


      zzForAction: {
        while (true) {
    
          if (zzCurrentPosL < zzEndReadL)
            zzInput = zzBufferL[zzCurrentPosL++];
          else if (zzAtEOF) {
            zzInput = YYEOF;
            break zzForAction;
          }
          else {
            // store back cached positions
            zzCurrentPos  = zzCurrentPosL;
            zzMarkedPos   = zzMarkedPosL;
            boolean eof = zzRefill();
            // get translated positions and possibly new buffer
            zzCurrentPosL  = zzCurrentPos;
            zzMarkedPosL   = zzMarkedPos;
            zzBufferL      = zzBuffer;
            zzEndReadL     = zzEndRead;
            if (eof) {
              zzInput = YYEOF;
              break zzForAction;
            }
            else {
              zzInput = zzBufferL[zzCurrentPosL++];
            }
          }
          int zzNext = zzTransL[ zzRowMapL[zzState] + zzCMapL[zzInput] ];
          if (zzNext == -1) break zzForAction;
          zzState = zzNext;

          int zzAttributes = zzAttrL[zzState];
          if ( (zzAttributes & 1) == 1 ) {
            zzAction = zzState;
            zzMarkedPosL = zzCurrentPosL;
            if ( (zzAttributes & 8) == 8 ) break zzForAction;
          }

        }
      }

      // store back cached position
      zzMarkedPos = zzMarkedPosL;

      switch (zzAction < 0 ? zzAction : ZZ_ACTION[zzAction]) {
        case 13: 
          { return new Symbol(sym.MINUS, yyline, yycolumn);
          }
        case 50: break;
        case 48: 
          { return new Symbol(sym.WCONTINUE, yyline, yycolumn, new String(yytext()));
          }
        case 51: break;
        case 10: 
          { return new Symbol(sym.NOT, yyline, yycolumn);
          }
        case 52: break;
        case 3: 
          { return new Symbol(sym.INT, new IntLiteral(Integer.parseInt(yytext()), yyline, yycolumn));
          }
        case 53: break;
        case 26: 
          { return new Symbol(sym.GREATER_EQ_THAN, yyline, yycolumn);
          }
        case 54: break;
        case 30: 
          { return new Symbol(sym.AND, yyline, yycolumn);
          }
        case 55: break;
        case 12: 
          { return new Symbol(sym.PLUS, yyline, yycolumn);
          }
        case 56: break;
        case 27: 
          { return new Symbol(sym.EQ, yyline, yycolumn);
          }
        case 57: break;
        case 36: 
          { return new Symbol(sym.FLOAT, new FloatLiteral(Float.parseFloat(yytext()), yyline, yycolumn));
          }
        case 58: break;
        case 2: 
          { return new Symbol(sym.ID, yyline, yycolumn, new String(yytext()));
          }
        case 59: break;
        case 9: 
          { return new Symbol(sym.ASSIGN, yyline, yycolumn);
          }
        case 60: break;
        case 34: 
          { return new Symbol(sym.STRING_LITERAL, yyline, yycolumn, yytext().substring(1,yytext().length()-1));
          }
        case 61: break;
        case 25: 
          { return new Symbol(sym.LESS_EQ_THAN, yyline, yycolumn);
          }
        case 62: break;
        case 14: 
          { return new Symbol(sym.SEMICOLON, yyline, yycolumn);
          }
        case 63: break;
        case 15: 
          { return new Symbol(sym.COMMA, yyline, yycolumn);
          }
        case 64: break;
        case 31: 
          { return new Symbol(sym.ASSIGN_INC, yyline, yycolumn);
          }
        case 65: break;
        case 19: 
          { return new Symbol(sym.RC, yyline, yycolumn);
          }
        case 66: break;
        case 45: 
          { return new Symbol(sym.WWHILE, yyline, yycolumn, new String(yytext()));
          }
        case 67: break;
        case 35: 
          { yybegin(YYINITIAL);
          }
        case 68: break;
        case 1: 
          { System.err.println("Illegal character: "+ yytext()+ " linea: " + (yyline+1) + " columna: " + (yycolumn+1));
          }
        case 69: break;
        case 16: 
          { return new Symbol(sym.LPAR, yyline, yycolumn);
          }
        case 70: break;
        case 29: 
          { return new Symbol(sym.OR, yyline, yycolumn);
          }
        case 71: break;
        case 23: 
          { System.out.print(yytext());
          }
        case 72: break;
        case 24: 
          { yybegin(C_COMMENT);
          }
        case 73: break;
        case 33: 
          { return new Symbol(sym.WIF, yyline, yycolumn, new String(yytext()));
          }
        case 74: break;
        case 6: 
          { return new Symbol(sym.MULT, yyline, yycolumn);
          }
        case 75: break;
        case 46: 
          { return new Symbol(sym.WRETURN, yyline, yycolumn, new String(yytext()));
          }
        case 76: break;
        case 8: 
          { return new Symbol(sym.GREATER_THAN, yyline, yycolumn);
          }
        case 77: break;
        case 20: 
          { return new Symbol(sym.LLL, yyline, yycolumn);
          }
        case 78: break;
        case 7: 
          { return new Symbol(sym.LESS_THAN, yyline, yycolumn);
          }
        case 79: break;
        case 21: 
          { return new Symbol(sym.RLL, yyline, yycolumn);
          }
        case 80: break;
        case 43: 
          { return new Symbol(sym.WCLASS, yyline, yycolumn, new String(yytext()));
          }
        case 81: break;
        case 37: 
          { return new Symbol(sym.WINT, yyline, yycolumn, Type.INT);
          }
        case 82: break;
        case 28: 
          { return new Symbol(sym.NOT_EQ, yyline, yycolumn);
          }
        case 83: break;
        case 47: 
          { return new Symbol(sym.WBOOLEAN, yyline, yycolumn, Type.BOOLEAN);
          }
        case 84: break;
        case 42: 
          { return new Symbol(sym.WBREAK, yyline, yycolumn, new String(yytext()));
          }
        case 85: break;
        case 32: 
          { return new Symbol(sym.ASSIGN_DEC, yyline, yycolumn);
          }
        case 86: break;
        case 39: 
          { return new Symbol(sym.WELSE, yyline, yycolumn, new String(yytext()));
          }
        case 87: break;
        case 5: 
          { return new Symbol(sym.DIV, yyline, yycolumn);
          }
        case 88: break;
        case 11: 
          { return new Symbol(sym.MODULE, yyline, yycolumn);
          }
        case 89: break;
        case 40: 
          { return new Symbol(sym.BOOLEAN, new BoolLiteral(Boolean.parseBoolean(yytext()), yyline, yycolumn));
          }
        case 90: break;
        case 17: 
          { return new Symbol(sym.RPAR, yyline, yycolumn);
          }
        case 91: break;
        case 38: 
          { return new Symbol(sym.WFOR, yyline, yycolumn, new String(yytext()));
          }
        case 92: break;
        case 41: 
          { return new Symbol(sym.WVOID, yyline, yycolumn, Type.VOID);
          }
        case 93: break;
        case 4: 
          { /*Ignore*/
          }
        case 94: break;
        case 18: 
          { return new Symbol(sym.LC, yyline, yycolumn);
          }
        case 95: break;
        case 49: 
          { return new Symbol(sym.WEXTERNINVK, yyline, yycolumn, new String(yytext()));
          }
        case 96: break;
        case 44: 
          { return new Symbol(sym.WFLOAT, yyline, yycolumn, Type.FLOAT);
          }
        case 97: break;
        case 22: 
          { 
          }
        case 98: break;
        default: 
          if (zzInput == YYEOF && zzStartRead == zzCurrentPos) {
            zzAtEOF = true;
            zzDoEOF();
              { return new java_cup.runtime.Symbol(sym.EOF); }
          } 
          else {
            zzScanError(ZZ_NO_MATCH);
          }
      }
    }
  }

  /**
   * Runs the scanner on input files.
   *
   * This is a standalone scanner, it will print any unmatched
   * text to System.out unchanged.
   *
   * @param argv   the command line, contains the filenames to run
   *               the scanner on.
   */
  public static void main(String argv[]) {
    if (argv.length == 0) {
      System.out.println("Usage : java yylex <inputfile>");
    }
    else {
      for (int i = 0; i < argv.length; i++) {
        yylex scanner = null;
        try {
          scanner = new yylex( new java.io.FileReader(argv[i]) );
          while ( !scanner.zzAtEOF ) scanner.next_token();
        }
        catch (java.io.FileNotFoundException e) {
          System.out.println("File not found : \""+argv[i]+"\"");
        }
        catch (java.io.IOException e) {
          System.out.println("IO error scanning file \""+argv[i]+"\"");
          System.out.println(e);
        }
        catch (Exception e) {
          System.out.println("Unexpected exception:");
          e.printStackTrace();
        }
      }
    }
  }


}
