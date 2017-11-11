# SXML: S-exp-based XML parsing/query/conversion

SXML is an abstract syntax tree for XML
that represents the document as an S-expression.
XML can be parsed into SXML using the SAX parser (SSAX) provided by this library.
It natural to manipulate and query XML data in Scheme in S-expression form,
for example using the provided transformation (SXSLT) and query (SXPath) languages.

## SSAX

A SSAX functional XML parsing framework consists of a DOM/SXML parser, a SAX parser, and a supporting library of lexing and parsing procedures. The procedures in the package can be used separately to tokenize or parse various pieces of XML documents. The framework supports XML Namespaces, character, internal and external parsed entities, attribute value normalization, processing instructions and CDATA sections. The package includes a semi-validating *SXML parser:* a DOM-mode parser that is an instantiation of a SAX parser (called **SSAX**).

**SSAX** is a full-featured, algorithmically optimal, pure-functional parser, which can act as a stream processor. SSAX is an efficient SAX parser that is *easy to use*. SSAX minimizes the amount of application-specific state that has to be shared among user-supplied event handlers. SSAX makes the maintenance of an application-specific element stack unnecessary, which eliminates several classes of common bugs. SSAX is written in a pure-functional subset of Scheme. Therefore, the event handlers are referentially transparent, which makes them easier for a programmer to write and to reason about. The more expressive, reliable and easier to use application interface for the event-driven XML parsing is the outcome of implementing the parsing engine as an enhanced tree fold combinator, which fully captures the control pattern of the depth-first tree traversal.

## Original version

The original version of SSAX is at [Sourceforge][ssax].
[Oleg Kiselyov](http://okmij.org/ftp/Scheme/xml.html#XML-parser) was the primary developer,
with contributions from
[Dmitry Lizorkin](http://modis.ispras.ru/Lizorkin/xml-functional.html),
[Kirill Lisovsky](http://metapaper.net/xml/ssax/) and
[Mike Sperber](http://www.deinprogramm.de/sperber/software/).
The whole of the original version is in the public domain.

Original SSAX has been tested on many Scheme implementations:

- [PLT Scheme][plt]
- [Bigloo][bigloo]
- [GambitC 4.0][gambit]
- [Chicken][chicken]
- [Guile][guile]
- [SCM][scm]
- [MIT Scheme 7.5.2][mit]
- [Scheme48][s48]
- [SCSH][scsh]
- [Gauche][gauche]
- [SISC][sisc]

[ssax]: http://ssax.sourceforge.net/  "Sourceforge SSAX"
[plt]: http://racket-lang.org/ "Racket"
[bigloo]: http://www-sop.inria.fr/indes/fp/Bigloo/ "Bigloo"
[gambit]: http://gambitscheme.org/wiki/index.php/Main_Page "Gambit Scheme"
[chicken]: http://www.call-cc.org/ "Chicken Scheme"
[guile]: http://www.gnu.org/software/guile/ "GNU Guile"
[scm]: http://people.csail.mit.edu/jaffer/SCM.html "SCM"
[mit]: http://www.gnu.org/software/mit-scheme/ "MIT Scheme"
[s48]: http://s48.org/ "Scheme 48"
[scsh]: http://www.scsh.net/ "Scsh"
[gauche]: http://practical-scheme.net/gauche/ "Gauche"
[sisc]: http://sisc-scheme.org/ "SISC"
