# SSAX: S-expression-based XML parsing

SXML is a syntax for XML that represents the document as an S-expression.
SSAX is a SAX parser framework for parsing XML into SXML.

The SSAX functional XML parsing framework consists of

- a SAX parser,
- a DOM/SXML parser, and
- a supporting library of lexing and parsing procedures.

The provided procedures can be used separately
to tokenize or parse various pieces of XML documents.
The framework supports

- XML Namespaces,
- character, internal and external parsed entities,
- attribute value normalization,
- processing instructions, and
- CDATA sections.

SSAX itself is a semi-validating DOM/SXML parser implemented on top of the SAX parser.
SSAX is a pure-functional parser that can act as a stream processor, i.e.
it is an efficient SAX parser that is also *easy to use*.
SSAX minimizes the amount of state shared among user-supplied event handlers.
The maintenance of an application-specific element stack is unnecessary,
which eliminates several classes of common bugs.
SSAX is written in a pure-functional subset of Scheme;
the event handlers are referentially transparent,
making them easy for a programmer to write and to reason about.
The simple interface for event-driven XML parsing
is the outcome of implementing the parsing engine as an enhanced tree fold combinator,
which fully captures the control pattern of the depth-first tree traversal.

This implementation of SSAX targets R7RS, particularly [Chibi Scheme][].

[Chibi Scheme]: <https://github.com/ashinn/chibi-scheme>

## Original version

The original version of SSAX is at [Sourceforge][ssax].
[Oleg Kiselyov][] was the primary developer, with contributions from
[Dmitry Lizorkin][], [Kirill Lisovsky][] and [Mike Sperber][].
The whole of the original version is in the public domain.

Original SSAX targets R4RS and R5RS; it has been tested on many Scheme implementations:

- [PLT Scheme][]
- [Bigloo][]
- [Gambit][]
- [Chicken][]
- [GNU Guile][]
- [SCM][]
- [MIT Scheme][]
- [Scheme 48][]
- [SCSH][]
- [Gauche][]
- [SISC][]

[ssax]: <http://ssax.sourceforge.net/>
[PLT Scheme]: <http://racket-lang.org/>
[Bigloo]: <http://www-sop.inria.fr/indes/fp/Bigloo/>
[Gambit]: <http://gambitscheme.org/wiki/index.php/Main_Page>
[Chicken]: <http://www.call-cc.org/>
[GNU Guile]: <http://www.gnu.org/software/guile/>
[SCM]: <http://people.csail.mit.edu/jaffer/SCM.html>
[MIT Scheme]: <http://www.gnu.org/software/mit-scheme/>
[Scheme 48]: <http://s48.org/>
[SCSH]: <http://www.scsh.net/>
[Gauche]: <http://practical-scheme.net/gauche/>
[SISC]: <http://sisc-scheme.org/>
[Oleg Kiselyov]: <http://okmij.org/ftp/Scheme/xml.html#XML-parser>
[Dmitry Lizorkin]: <http://modis.ispras.ru/Lizorkin/xml-functional.html>
[Kirill Lisovsky]: <http://metapaper.net/xml/ssax/>
[Mike Sperber]: <http://www.deinprogramm.de/sperber/software/>
