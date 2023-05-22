#lang racket
(require racket/date)

;funciones a realizar para tda system - constructor

;funcion que define un sistema, verificando si name es un string, para asi
;crear una lista con name y la fecha de creacion
(define (crear_sistema name)
  (if (string_name name) (list name (fecha_sistema name))#f))

;funcion que verifica si el elemento es un string
(define (string_name name)
  (if (string? name) #t
      #f))

;funcion que almacena tres elementos (day, month, year) en una lista
(define (fecha_sistema name)
  (list (date-day (current-date)) (date-month (current-date)) (date-year (current-date))))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))