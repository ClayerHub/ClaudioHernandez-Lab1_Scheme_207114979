#lang racket
;funciones a realizar para tda system - cd (change directory)
;Dominio->system x folderName(string)
;Recorrido->system
;función que permite cambiar la ruta (path) donde se realizarán operaciones
(define (cd system)
  (lambda(folderName)#t))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))