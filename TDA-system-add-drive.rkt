#lang racket

;funciones a realizar para tda system - add-drive

;funcion que crea una unidad letter de nombre name y capacidad capacity
;estos datos los agrega al system en una lista que contiene letter, name y capacity
(define (add-drive system)
  (lambda (letter)
    (lambda(name)
      (lambda(capacity)
        (if(and(verificar_letter letter)(verificar_name name)(verificar_capacity capacity)(not(unidad_existente? system letter)))
            (append system (list(list letter name capacity)))#f)))))

;funcion que verifica si el elemento es un char
(define (verificar_letter letter)
  (if (char? letter) #t
      #f))
;funcion que verifica si el elemento es un string
(define (verificar_name name)
  (if (string? name) #t
      #f))
;funcion que verifica si el elemento es un entero
(define (verificar_capacity capacity)
  (if (integer? capacity) #t
      #f))

(define (unidad_existente? system letter)
  (if(null?(caddr system))#f
     (or(char=? (primer_elemento_sublista(tercer_elemento_lista system)) letter)
        (unidad_existente? (list (primer_elemento_lista system) (segundo_elemento_lista system) (resto_lista(tercer_elemento_lista system)))letter))))

;funcion que obtiene el primer elemento de una lista
(define (car-unidad lista)
  (if (list? lista) (car lista)null))

;funcion que obtiene los elementos de una lista, excepto el primero
(define (resto_lista lista)
  (if (list? lista) (cdr lista)null))

;funcion que obtiene el primer elemento de una lista
(define (primer_elemento_lista lista)
  (if(list? lista)(caddr lista)null))

;funcion que obtiene el segundo elemento de una lista
(define (segundo_elemento_lista lista)
  (if(list? lista)(caddr lista)null))
  
;funcion que obtiene el tercer elemento de una lista
(define (tercer_elemento_lista lista)
  (if(list? lista)(caddr lista)null))

;funcion que obtiene el primer elemento de una sublista
(define(primer_elemento_sublista lista)
  (if(list? lista) (caar lista)null))

;funcion que agrega un elemento a una lista
(define (agregar-a-lista x system)
  (append system (list x)))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))


