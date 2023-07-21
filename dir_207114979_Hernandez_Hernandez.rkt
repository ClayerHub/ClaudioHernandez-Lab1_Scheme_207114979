#lang racket
;funciones a realizar para tda system - dir(directory)
;Dominio->system x currentName(string list)
;Recorrido->system(formateado para poder visualizarlo con display)
;función para listar el contenido de un directorio específico o de toda una ruta, lo que se determina mediante parámetros
(define (dir system params)
  (if (null? system)#f
      system))

;funcion run para ejecutar el comando dir en el sistema
(define (run system command)
  (lambda(params)
    (command system params)))
  
;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))
    