#lang racket

;funciones a realizar para tda system - login

;funcion
(define (login system userName))

;funcion que verifica si userName es un elemento string
(define (verificar-userName userName)
  (if (string? userName) #t
      #f))

