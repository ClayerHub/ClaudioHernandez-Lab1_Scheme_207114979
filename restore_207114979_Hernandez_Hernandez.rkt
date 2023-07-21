#lang racket
;funciones a realizar para tda system - restore
;Dominio->system x fileName(string)
;Recorrido->String formateado para visualizarlo con display
;función que restaurar contenido específico dentro de la papelera para ubicarlo en su ubicación original
(define (restore system fileName)
  (if (null? system) #f
      system))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))