#lang racket
;funciones a realizar para tda system - format
;Dominio->system x letter(char) x name(string)
;Recorrido->system
;función para formatear una unidad dada su letra, lo que borra todo su contenido, además de indicar nuevo nombre, pero conservando capacidad
(define (format system letter name)
  (if(null? system)#f
     system))

;funcion run para ejecutar el comando format en el sistema
(define (run system command)
  (lambda(letter name)
    (command system letter name)))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))
    