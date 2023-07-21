#lang racket
;funciones a realizar para tda system - copy
;Dominio->system x source(string) x target path(string)
;Recorrido->system
;función para copiar un archivo o carpeta desde una ruta origen a una ruta destino
(define (copy system source targetPath)
  (if(null? system)#f
     system))


;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))