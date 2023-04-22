#lang racket
(require racket/date)

;funciones a realizar para tda system - constructor

;funcion que define un sistema
(define S0(system name)
  (if (equal? (verificar-nombre-sistema name) #t) (lista-sistemas name)
  (displayln "No has ingresado un nombre válido.")))

;funcion que verifica si el elemento es un string
(define (verificar-name-system name)
  (if (string? name) #t
      #f))

;funcion que verifica si el elemento es una lista
(define (verificar-list-system system)
  (if (list? system) #t
      #f))

;funcion que almacena cuatro elementos (name, day, month, year) en una lista
(define system-list (name)
  (list name (date-day (current-date)) (date-month (current-date)) (date-year (current-date))))

;funcion que obtiene el nombre del sistema
(define (name-system name)
  (if (verificar-name-system name) (car(system-list name)) null))

;funcion que obtiene la fecha de creacion del sistema
(define (fecha-creacion-sistema name)
  (if (verificar-nombre-sistema name) (cdr(system-list name)) null))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))