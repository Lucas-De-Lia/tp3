;entrada lista de numeros la lista puede tener 0 mas y construye una lista donde cada num es el doble del que tenia
(define largo
  (lambda (lista)
    (if(null? lista) 0 ;caso base 
    (+ 1 (largo(cdr lista))))));caso recursivo 
(define duplica-lista
  (lambda(lista)
    (if (null? lista)
        ('())
        (if (= 1 (largo lista))
            (cons(* (car lista) 2) '())
            (cons  (*(car lista) 2) (duplica-lista (cdr lista)))))))
(duplica-lista '(1 2 3))
;map
(define (doble x) (* 2 x))
(define (dublica-list lista)
  (map doble lista));map es una funcion de orden superior que toma como argumento otra funcion , el map funciona como un collecct
(duplica-lista '(1 2 3))

;(define (multiplos-de-3-lista lst)
 ; (if (null? lst) '()
  ;    (if(multiplo-de-3? (car lst))
   ;      (cons (car lst) (multiplos-de-3-lista (cdr lista)))
    ;     (multiplos-de-3-lista (cdr lst)))))
;(define multiplo-de-3
 ; (lambda(numero)
  ;(if (= 0 (modulo numero 3))
   ;   (#t)
    ;  (#f))))
;(define (filter pred? lst)
 ; (if (null? lst) '()
  ;    (if(pred? (car lst))
   ;      (cons (car lst) (filter pred? (cdr lista)))
    ;     (filter pred? (cdr lst)))))
;(define (pares lst)
 ; (filter even? lst))
;(multiplos-de-3-lista '(1 2 3 4 5 6))
;filter me devuelve aquellas evaluaciones que complen con uan condicion
;(define (cuadpares lst)
 ; (map (lambda(x) (* x x));aplica una funcion a todos los elementos de una lista
  ; (filter even? lst)));lst es la lista de entrada ; filter even me devuelve una lista de los pares dentro de lista
;(cuadpares '(1 2 4 5))