#lang racket
;funciones a realizar para tda system - move
;Dominio->system x source(string) x target path(string)
;Recorrido->system
;función para mover un archivo o carpeta desde una ruta origen a una ruta destino
(define (move system source targetPath)
  (if(null? system)#f
     system))



;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))