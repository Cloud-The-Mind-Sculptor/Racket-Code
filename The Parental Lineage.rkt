; This is a mega program with all of the functions that I write throughout my time in the intro to computer science course at the University of Dallas.


; list -> list
; takes a list and then doubles the ammount of items in a list
(define (dubble l) (foldr (lambda (li acc) (cons li (cons li acc))) empty l))
