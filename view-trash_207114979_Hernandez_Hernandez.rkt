#lang racket
;funciones a realizar para tda system - view-trash
;Dominio->system
;Recorrido->String formateado para visualizarlo con display
;función que permite obtener el contenido de la papelera de reciclaje de un sistema
(define(view-trash system)
  (if (null? system)#f
      (if (<= (length system)8)#f
          (rrresto_lista_trash (rrresto_lista_trash (rresto_lista_trash system))))))

;funcion run para ejecutar el comando view-trash en el sistema
(define (run system command)
  (command system))

;funcion que obtiene los elementos de una lista, excepto los primeros dos
(define (rresto_lista_trash lista)
  (if (list? lista) (cddr lista)null))

;funcion que obtiene los elementos de una lista, excepto los primeros tres
(define (rrresto_lista_trash lista)
  (if (list? lista) (cdddr lista)null))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))