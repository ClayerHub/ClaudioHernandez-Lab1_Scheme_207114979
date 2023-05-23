#lang racket
(require racket/date)
(require "TDA-system-constructor.rkt")
(require "TDA-system-add-drive.rkt")
(require "TDA-system-login.rkt")
(require "TDA-system-logout.rkt")
(require "TDA-system-register.rkt")
(require "TDA-system-switch-drive.rkt")
(require "TDA-system-common-definitions.rkt")

;funciones a realizar para tda system - run
;Dominio->system x command(funcion)
;Recorrido->system
;función que permite ejecutar un comando (función) sobre un sistema.
(define (run system command)
  (command system))

;funcion que verifica si el elemento f es una funcion
(define (verificar-funcion command)
  (if (procedure? command) #t
      #f))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))