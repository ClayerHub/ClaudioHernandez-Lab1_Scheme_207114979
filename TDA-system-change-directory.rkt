#lang racket

;funciones a realizar para tda system - change directory

;funcion
(define (cd system folderName))

;funcion que verifica si name es un elemento string
(define (verificar-folderName folderName)
  (if (string? folderName) #t
      #f))