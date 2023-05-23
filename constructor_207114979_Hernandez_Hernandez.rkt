#lang racket
(require racket/date)


;funciones a realizar para tda system - constructor
;Dominio->name (string)
;Recorrido->system
;función constructora de un sistema. Deja registro de la fecha de creación.
(define (system name)
  (if (string_name_cons name) (list name (fecha_sistema name))#f))

;funcion que verifica si el elemento es un string
(define (string_name_cons name)
  (if (string? name) #t
      #f))

;funcion que almacena tres elementos (day, month, year) en una lista
(define (fecha_sistema name)
  (list (date-day (current-date)) (date-month (current-date)) (date-year (current-date))))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))