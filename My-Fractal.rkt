(define (S n)
  (cond [(= n 0) (circle 3 "solid" "red")]
        [else (local [(define Sn-1 (freeze (S (- n 1))))
                      (define blank (circle (/ (image-width Sn-1) 2) "solid" "white"))]
                (above
                 (beside Sn-1 blank Sn-1)
                 Sn-1
                 (beside Sn-1 blank Sn-1)))]))
             
(define my-fractal (S 4))
