#lang racket

;funciones a realizar para tda system - register

;funcion
(define (register system userName))

;funcion que verifica si userName es un elemento string
(define (verificar-userName userName)
  (if (string? userName) #t
      #f))

;funcion que obtiene el primer elemento de una lista
(define (car-nombre-usuario lista)
  (if (list? lista) (car lista)null))

;funcion que obtiene los elementos de una lista, excepto el primero
(define (cdr--nombre-usuario lista)
  (if (list? lista) (cdr lista)null))
;funcion que verifica si el nombre de usuario ya existe
(define (existe-nombre-usuario? userName system)
  (if (null? system)#t
      (if (string=? userName (car-nombre-usuario system))#f
          (existe-nombre-usuario? userName (cdr-nombre-usuario system)))))

