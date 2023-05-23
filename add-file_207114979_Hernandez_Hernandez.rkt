#lang racket
;funciones a realizar para tda system - add-file
;Dominio->system x file
;Recorrido->system
;función que permite añadir un archivo en la ruta actual
(define (add-file system)
  (lambda(file)#t))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))