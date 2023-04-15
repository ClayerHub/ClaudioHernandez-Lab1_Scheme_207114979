#lang racket

;funciones a realizar para tda system - register

;funcion
(define (register system userName))

;funcion que verifica si userName es un elemento string
(define (verificar-userName userName)
  (if (string? userName) #t
      #f))

;funcion que define un sistema
(define (crear-sistema name)
  (if (equal? (verificar-nombre-sistema name) #t) (lista-sistemas name)
  (displayln "No has ingresado un nombre válido.")))

;funcion que verifica si el nombre del sistema es un string
(define (verificar-nombre-sistema name)
  (if (string? name) #t
      #f))

;funcion que crea una lista donde se guarda el nombre del sistema en una lista y su fecha de creacion
(define (lista-sistemas name)
  (list name (date-day (current-date)) (date-month (current-date)) (date-year (current-date))))

;funcion que obtiene el nombre del sistema
(define (nombre-sistema name)
  (if (verificar-nombre-sistema name) (car name) null))

;funcion que obtiene la fecha de creacion del sistema
(define (fecha-creacion-sistema name)
  (if (verificar-nombre-sistema name) (cdr name) null))

;funcion que obtiene al primer nombre de sistema de la lista de sistemas
(define (car-sistema listaSistemas)
  (if (list? listaSistemas) (car listaSistemas)null))

;funcion que obtiene los nombres de sistema de la lista de sistemas, excepto el primero
(define (cdr-sistema listaSistemas)
  (if (list? listaSistemas) (cdr listaSistemas)null))

;funcion que verifica si el sistema existe
(define (existe-sistema? name listaSistemas)
  (if (null? listaSistemas)
      (displayln "No hay ningún sistema registrado.")
      (if (not(equal? name (car-sistema listaSistemas)))
          (existe-sistema? (cdr-sistema listaSistemas))
          #f)))