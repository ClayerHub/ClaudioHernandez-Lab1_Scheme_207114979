#lang racket

;funciones a realizar para tda system - del

;funcion
(define (del system fileName))

;funcion que verifica si name es un elemento string
(define (verificar-name fileName)
  (if (string? fileName) #t
      #f))