#lang racket
;funciones a realizar para tda system - grep
;Dominio->system x pattern(string) x fileName(string)
;Recorrido->String formateado para visualizarlo con display
;función que permite buscar dentro del contenido de un archivo específico o dentro de una ruta
(define (grep system pattern fileName)
  (if(null? system)#f
     system))

;funcion run para ejecutar el comando grep en el sistema
(define (run system command)
  (lambda(pattern fileName)
    (command system pattern fileName)))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))