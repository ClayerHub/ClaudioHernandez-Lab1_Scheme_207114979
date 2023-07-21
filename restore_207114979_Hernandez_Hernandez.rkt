#lang racket
;funciones a realizar para tda system - restore
;Dominio->system x fileName(string)
;Recorrido->String formateado para visualizarlo con display
;función que restaurar contenido específico dentro de la papelera para ubicarlo en su ubicación original
(define (restore system fileName)
  (if (null? system) #f
      system))

;funcion run para ejecutar el comando restore en el sistema
(define (run system command)
  (lambda(system fileName)
    (command system system fileName)))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))