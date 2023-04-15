#lang racket

;funciones a realizar para tda system - remove directory

;funcion
(define (rd system folderName))

;funcion que verifica si name es un elemento string
(define (verificar-name folderName)
  (if (string? folderName) #t
      #f))