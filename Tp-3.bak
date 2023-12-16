;funciones auxiliares definicion array
(define array-asoc-etiqueta 'array-asociativo)
(define (array-asoc-crea) (list array-asoc-etiqueta))
;nil
(define nil 'nil)

;ejercicio 2 
(define obtener_clave
  (lambda (par)
    (car par)))
(define agrega-reemplaza
  (lambda (array clave valor)
    (if (equal? array '())
        (list (cons clave valor));caso base crea una lista con clave valor
    (if (equal? (car array) array-asoc-etiqueta);si tiene la etiqueta primero
        (cons array-asoc-etiqueta (agrega-reemplaza (cdr array) clave valor));crea una lista con la etiqueta y la recursion
        (if (equal? (obtener_clave (car array)) clave);si no es la etiquera es un par y verifica la key
            (cons (cons clave valor) (cdr array));si la key es igual cambia el contenido y se lo agrega a lo del final
            (cons (car array);si no lo es hace un append entre la lista que contiene al primer elemento y la recursion
                  (agrega-reemplaza (cdr array) clave valor)))))))


(agrega-reemplaza
(agrega-reemplaza (array-asoc-crea) #\a 97)
#t 'boolean)
(agrega-reemplaza (array-asoc-crea) 8.6 '(racket rkt))
;array 1

(define array-1
(agrega-reemplaza
(agrega-reemplaza (array-asoc-crea) 8.6 '(racket rkt))
5.07 '(prolog pl)))

(define array-2
(agrega-reemplaza
(agrega-reemplaza
(agrega-reemplaza
(agrega-reemplaza
(agrega-reemplaza (array-asoc-crea) #\a 97)
#t 'boolean)
#f 'boolean)
+ "suma")
'() "lista vacia"))
;array 3
(define array-3
(agrega-reemplaza
(agrega-reemplaza (array-asoc-crea) "impar" odd?)
"ultimo" (lambda (lista) (car (reverse lista)))))

;ejercicio 1
(define elimina
  (lambda (array clave)
        (if (equal? (car array) array-asoc-etiqueta)
            (cons (car array) (elimina (cdr array) clave))
            (if (equal? (obtener_clave (car array)) clave)
                (cdr array)
                (if (null? (cdr array))
                     (list(car array))
                     (cons (car array) (elimina (cdr array) clave)))))))
 
        

display array-2
(elimina array-2 #f)
;ejercicio3
