(define (left-or-right p1 p2) 
    (cond [(> (posn-x p1) (posn-x p2)) "Right"]
          [(> (posn-x p2) (posn-x p1)) "Left"]
          [else "Neither"]))
