(define (bridgely? lon) 
    (local [(define ALPHA (first lon))
            (define (last_val l) (cond [(empty? (rest l)) (first l)]
                                       [else (last_val (rest l))]))
            (define OMEGA (last_val lon))]
    (cond [(> 3 (length lon)) false]
          [(empty? (rest (rest (rest lon)))) (if (and (< OMEGA (first (rest lon))) (< OMEGA (first lon))) true false)]
          [(> ALPHA (rest lon)) false]
          [(> OMEGA (rest lon)) false]
          [(and (< ALPHA (first (rest lon))) (< OMEGA (first (rest lon)))) (bridgley? (rest lon))]
          [else false]
          )))
