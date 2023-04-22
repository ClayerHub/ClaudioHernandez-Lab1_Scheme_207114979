#lang racket

;funciones a realizar para tda system - add-drive

;'(nombre-de-sistema dia-creacion mes-creacion anio-creacion lista-unidades lista-nombre-unidades lista-capacidad-unidades
;funcion
(define (add-drive system letter name capacity)
  (if(and (verificar-letter letter) (verificar-name name) (verificar-capacity capacity))
     (if (existe-unidad? letter (quinto-elemento-lista system))#f
         (if (existe-nombre-unidad? name (sexto-elemento-lista system))#f
             (begin(agregar-a-lista (list letter system))
             (agregar-a-lista (list name system))
             (agregar-a-lista (list capacity system)))))
     #f))

;funcion que verifica si el elemento es un char
(define (verificar-letter letter)
  (if (char? letter) #t
      #f))
;funcion que verifica si el elemento es un string
(define (verificar-name name)
  (if (string? name) #t
      #f))
;funcion que verifica si el elemento es un entero
(define (verificar-capacity capacity)
  (if (integer? capacity) #t
      #f))

;funcion que obtiene el primer elemento de una lista
(define (car-unidad lista)
  (if (list? lista) (car lista)null))

;funcion que obtiene los elementos de una lista, excepto el primero
(define (cdr-unidad lista)
  (if (list? lista) (cdr lista)null))

;funcion que obtiene el quinto elemento de una lista
(define (quinto-elemento-lista lista)
  (if(list? lista)(list-ref lista 4)null))

;funcion que obtiene el sexto elemento de una lista
(define (sexto-elemento-lista lista)
  (if(list? lista)(list-ref lista 5)null))

;funcion que obtiene el septimo elemento de una lista
(define (septimo-elemento-lista lista)
  (if(list? lista)(list-ref lista 6)null))

;funcion que verifica si la unidad letter ya existe
(define (existe-unidad? letter system)
  (if (null? system)#t
      (if (char=? letter (car-unidad system))#f
          (existe-unidad? letter (cdr-unidad system)))))

;funcion que verifica si el nombre de la unidad ya existe
(define (existe-nombre-unidad? name system)
  (if (null? system)#t
      (if (string=? name (car-unidad system))#f
          (existe-nombre-unidad? name (cdr-unidad system)))))

;funcion que agrega un elemento a una lista
(define (agregar-a-lista x system)
  (append system (list x)))




