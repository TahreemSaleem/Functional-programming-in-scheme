
(define pred (lambda (n) (((n (lambda (g) (lambda (k) (((g one) (lambda (u) (add (g k) one))) k)))) (lambda (v) zero)) zero)))

(define Yfunc(lambda (f)(lambda(m)(f (m m)) (f (m m)))))
(define zero (lambda (f) (lambda (x) x)))
(define one (lambda (f) (lambda (x) (f x))))
(define iszero (lambda (n) ((n (lambda (x) false)) true)))
(define add (lambda (m n) (lambda (f) (lambda (x) ((m f) ((n f) x))))))
(define sub (lambda (n m)(m (pred n))))
(define or (lambda (m n) (lambda (a b) (m a (n a b)))))
(define leq (lambda(m n)(iszero (sub m n))))
(define loop (lambda(m f) ((iszero m)zero (add f(sub m one) m))))

(define func(lambda (m n)(or (leq m n) (iszero m) ( Yfunc loop n) (add m n))))
