#lang racket
;funciones a realizar para tda system - ren(rename)
;Dominio->system x currentName(string) x newName(string)
;Recorrido->system
;función para renombrar una carpeta o archivo, siempre y cuando el nuevo nombre no viole la restricción de unicidad dentro del mismo nivel
(define (ren system currentName newName)
  (if (null? system)#f
      system))

;funcion run para ejecutar el comando ren en el sistema
(define (run system command)
  (lambda(currentName newName)
    (command system currentName newName)))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))