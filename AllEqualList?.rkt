(define (list-all-equal lon)
    (local [(define LEN (length lon))
            (define N (first lon))
            (define (HUH? x) (if (= N x) true false))]
           (cond [(= 1 LEN) true]
                 [else (if (= LEN (length (filter HUH? lon)))  true false)])))
