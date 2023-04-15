#lang racket

;funciones a realizar para tda system - copy

;funcion
(define (copy system source target-path))

;funcion que verifica si name es un elemento string
(define (verificar-name source)
  (if (string? source) #t
      #f))

;funcion que verifica si name es un elemento string
(define (verificar-name target-path)
  (if (string? target-path) #t
      #f))