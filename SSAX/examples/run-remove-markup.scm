; Given an XML document, remove all its markup.
; In other words, compute the string-value of a DOM tree of the document
;
; $Id$

(define docstrings
 '(
 "    Given an XML document, remove all its markup and print out the result"
 ""
 " Usage"
 "	remove-markup xml-file-name"
))

(define (parser-error port message . specialising-msgs)
  (apply cerr (cons message specialising-msgs))
  (cerr nl)
  (exit 4))
(define (SSAX:warn port message . specialising-msgs)
  (apply cerr (cons message specialising-msgs))
  (cerr nl))


(define (main argv)

  (define (help)
    (for-each
     (lambda (docstring) (cerr docstring nl))
     docstrings)
    (exit 4))

  (if (not (= 2 (length argv)))
      (help))		; at least one argument, besides argv[0], is expected
  (display 
   (call-with-input-file (cadr argv)
     remove-markup))
)

