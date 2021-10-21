(define (increasing? lon) 
    (cond [(empty? (rest lon)) true]
          [else (if 
                    (> (first lon) (first (rest lon)))
                    false
                     (increasing? (rest lon)))]
          ))
