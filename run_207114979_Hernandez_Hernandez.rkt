#lang racket
(require racket/date)
(require "constructor_207114979_Hernandez_Hernandez.rkt")
(require "add-drive_207114979_Hernandez_Hernandez.rkt")
(require "login_207114979_Hernandez_Hernandez.rkt")
(require "logout_207114979_Hernandez_Hernandez.rkt")
(require "register_207114979_Hernandez_Hernandez.rkt")
(require "switch-drive_207114979_Hernandez_Hernandez.rkt")
(require "encrypt_207114979_Hernandez_Hernandez.rkt")
(require "ren_207114979_Hernandez_Hernandez.rkt")
(require "decrypt_207114979_Hernandez_Hernandez.rkt")
(require "dir_207114979_Hernandez_Hernandez.rkt")
(require "format_207114979_Hernandez_Hernandez.rkt")
(require "grep_207114979_Hernandez_Hernandez.rkt")
(require "restore_207114979_Hernandez_Hernandez.rkt")
(require "copy_207114979_Hernandez_Hernandez.rkt")
(require "move_207114979_Hernandez_Hernandez.rkt")
(require "cd_207114979_Hernandez_Hernandez.rkt")
(require "view-trash_207114979_Hernandez_Hernandez.rkt")
(require "rd_207114979_Hernandez_Hernandez.rkt")
(require "minus-one_207114979_Hernandez_Hernandez.rkt")
(require "plus-one_207114979_Hernandez_Hernandez.rkt")
(require "add-file_207114979_Hernandez_Hernandez.rkt")
(require "del_207114979_Hernandez_Hernandez.rkt")
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