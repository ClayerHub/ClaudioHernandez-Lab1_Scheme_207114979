#lang racket

;funciones a realizar para tda system - switch-drive

;funcion
(define (switch-drive system letter))

;funcion que verifica si letter es un elemento char
(define (verificar-letter letter)
  (if (char? letter) #t
      #f))