#lang racket
;funciones a realizar para tda system - rd(remove directory)
;Dominio->system x folderName(string)
;Recorrido->system
;función para eliminar una carpeta, siempre y cuando ésta esté vacía
(define (rd system folderName)
  (if (null? system)#f
      system))



;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))