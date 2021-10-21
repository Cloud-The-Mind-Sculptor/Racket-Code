; SQ is a structure to hold square
; tl is a Posn, giving the top-left corner of the square
; side is a Number, giving the side length of the square
(define-struct SQ (tl side))

; Posn, SQ -> Boolean
(define (point-in-square? P S) 
    (cond [(and (= (posn-x P) (posn-x (SQ-tl S))) (= (posn-y P) (posn-y (SQ-tl S)))) true]
          [else (if (and 
             (and (<= (posn-x (SQ-tl S)) (posn-x P)) (<= (posn-x P) (+  (posn-x (SQ-tl S)) (SQ-side S))))
             (and (<= (posn-y (SQ-tl S)) (posn-y P)) (<= (posn-y P) (+  (posn-y (SQ-tl S)) (SQ-side S)))) 
             )
         true
         false)]))

; Our two values that we need to see
; (posn-x P)
; (posn-y P)

; need to check if (posn-x (SQ-tl S)) < (posn-x P) < (+ (posn-x (SQ-tl S)) (SQ-side S))
; need to check if (posn-y (SQ-tl S)) < (posn-y P) < (+ (posn-y (SQ-tl S)) (SQ-side S))

; What is going wrong now?
; P=(3, 1), S=[(3, 0), 1] produced False, correct is True: fails
; P=(3, 1), S=[(3, 0), 2] produced False, correct is True: fails
; P=(1, 3), S=[(1, 0), 4] produced False, correct is True: fails
; P=(2, 2), S=[(2, 1), 1] produced False, correct is True: fails
; These are the cases where things have gone wrong
; case 1: (and (< 0 3) (< 3 (+ 3 1)))
; I got it. I rule.
