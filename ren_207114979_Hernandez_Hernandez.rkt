#lang racket
;funciones a realizar para tda system - ren(rename)
;Dominio->system x currentName(string) x newName(string)
;Recorrido->system
;función para renombrar una carpeta o archivo, siempre y cuando el nuevo nombre no viole la restricción de unicidad dentro del mismo nivel
(define (rename system)
  (lambda(currentName)
    (lambda (newName)#t)))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))