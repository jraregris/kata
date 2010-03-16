
(define (test actual expected)
  (cond ((eq? actual expected)
         (display "."))
        (else
         (display (list "\nFAIL! Expected:" expected
                        "\n           was:" actual)))))

(define (fizz? n)
  (eq? (modulo n 3) 0))

(define (buzz? n)
  (eq? (modulo n 5) 0))

(define (fizzbuzz? n)
  (and (fizz? n)
       (buzz? n)))

(define (fizzbuzz n)
  (cond 
   ((fizzbuzz? n) 'fizzbuzz)
   ((fizz? n) 'fizz)
   ((buzz? n) 'buzz)
   (else n)))

(test (fizzbuzz 1) 1)
(test (fizzbuzz 2) 2)
(test (fizzbuzz 3) 'fizz)
(test (fizzbuzz 4) 4)
(test (fizzbuzz 5) 'buzz)
(test (fizzbuzz 6) 'fizz)
(test (fizzbuzz 9) 'fizz)
(test (fizzbuzz 10) 'buzz)
(test (fizzbuzz 15) 'fizzbuzz)

