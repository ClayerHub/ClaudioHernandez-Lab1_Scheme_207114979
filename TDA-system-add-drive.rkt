#lang racket

;funciones a realizar para tda system - add-drive

;funcion
(define (add-drive system letter name capacity listaUnidades)
  (if (and (verificar-letter letter)(existe-unidad? letter listaUnidades))
      (list letter name capacity)
      (displayln "No se ha podido añadir una nueva unidad.")))

;funcion que verifica si letter es un elemento char
(define (verificar-letter letter)
  (if (char? letter) #t
      #f))
;funcion que verifica si name es un elemento string
(define (verificar-name name)
  (if (string? name) #t
      #f))
;funcion que verifica si capacity es un elemento int
(define (verificar-capacity capacity)
  (if (integer? capacity) #t
      #f))

;funcion que obtiene al primer nombre de unidad de la lista de unidades
(define (car-unidad listaUnidades)
  (if (list? listaUnidades) (car listaUnidades)null))

;funcion que obtiene los nombres de unidad de la lista de unidades, excepto el primero
(define (cdr-unidad listaUnidades)
  (if (list? listaUnidades) (cdr listaUnidades)null))

;funcion que verifica si la unidad letter ya existe
(define (existe-unidad? unidad listaUnidades)
  (if (null? listaUnidades)#t
      (if (not(char=? unidad (car-unidad listaUnidades)))
          (existe-unidad? (unidad (cdr-unidad listaUnidades)))
          #f)))


