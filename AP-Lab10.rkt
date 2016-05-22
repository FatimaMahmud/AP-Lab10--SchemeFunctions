#lang scheme

(define NOT  (λ (m) (λ (a b) (m b a))))

(define OR   (λ (m n) (λ (a b)(n a (m a b)))))

(define AND  (λ (m n) (λ (a b)(n (m a b) b))))

(define add  (λ (m n s z) (m s (n s z))))

(define pred (λ (n)( n (λ (g k)( (g 1) (λ (u) ((add(g k)) 1 ) k))) (λ (v)( 0)) 0)))

(define subtract  (λ (m n) (n pred m)))

(define true (λ (x y) (x)))

(define false (λ (x y) (y)))

(define IsZero    (λ (n) ( n (λ (x) (false) true))))

(define LEQ    (λ (m n) ( IsZero (subtract m n))))

(define GEQ    (λ (m n) (NOT (LEQ m n))))

;(display (IsZero 1))

"It works"