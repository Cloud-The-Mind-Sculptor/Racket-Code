(define (bridgely? lon) 
    (local [(define ALPHA (first lon))
            (define (last_val l) 
                (cond [(empty? (rest l)) (first l)]
                      [else (last_val (rest l))]))
            (define OMEGA (last_val lon))]
    (cond [(> 3 (length lon)) false]
          [(= 3 (length lon)) (and (> (first (rest lon)) ALPHA) (> (first (rest lon)) OMEGA))]
          [(or (>= ALPHA (first (rest lon))) (>= OMEGA (first (rest lon)))) false]
          [else (bridgely? (cons ALPHA (rest (rest lon))))]
          )))
; last_val didn't need to be local but I don't need to move it either so it'll stay
