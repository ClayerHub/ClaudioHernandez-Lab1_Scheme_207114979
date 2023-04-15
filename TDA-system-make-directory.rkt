#lang racket

;funciones a realizar para tda system - make directory

;funcion
(define (md system name))

;funcion que verifica si name es un elemento string
(define (verificar-name name)
  (if (string? name) #t
      #f))