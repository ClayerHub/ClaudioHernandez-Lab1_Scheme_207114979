#lang racket
;funciones a realizar para tda system - del
;Dominio->system x fileName(string)
;Recorrido->system
; función para eliminar un archivo o varios archivos en base a un patrón determinado
(define (del system)
  (lambda(fileName)#t))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))