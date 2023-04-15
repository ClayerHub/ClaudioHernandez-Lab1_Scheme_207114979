#lang racket
(require racket/date)

;funciones a realizar para tda system - run

;funcion que permite ejecutar cualquier funcion sobre el sistema, guardando 
(define (run system f)
  (if (and (verificar-nombre-sistema system)(verificar-funcion f)) (append (lista-sistema system)(run-lista-datos f))
      (displayln "Ha habido un error con el nombre y/o la funcion ingresada.")))

;funcion que verifica si el elemento f es una funcion
(define (verificar-funcion f)
  (if (procedure? f) #t
      #f))

;funcion que guarda la funcion y la fecha en la que se realizo dicha modificacion en una lista
(define (run-lista-datos f)
  (list f (date-day (current-date)) (date-month (current-date)) (date-year (current-date))))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))