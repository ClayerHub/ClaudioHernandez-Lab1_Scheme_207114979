#lang racket

;funciones a realizar para tda system - logout
;Dominio->system
;Recorrido->system
;funcion que que permite cerrar la sesión de un usuario en el sistema
(define(logout system)
  (if(and (verificar_system_logout system)(>= (length system)5))
     (list (primer_elemento_lista_logout system) (segundo_elemento_lista_logout system) (tercer_elemento_lista_logout system) (cuarto_elemento_lista_logout system))#f))

;funcion que verifica si el elemento es una lista
(define (verificar_system_logout system)
  (if (list? system) #t
      #f))

;funcion que obtiene los elementos de una lista, excepto el primero
(define (resto_lista_logout lista)
  (if (list? lista) (cdr lista)null))

;funcion que obtiene el primer elemento de una lista
(define (primer_elemento_lista_logout lista)
  (if(list? lista)(car lista)null))

;funcion que obtiene el segundo elemento de una lista
(define (segundo_elemento_lista_logout lista)
  (if(list? lista)(cadr lista)null))
  
;funcion que obtiene el tercer elemento de una lista
(define (tercer_elemento_lista_logout lista)
  (if(list? lista)(caddr lista)null))

;funcion que obtiene el cuarto elemento de una lista
(define (cuarto_elemento_lista_logout lista)
  (if(list? lista)(cadddr lista)null))

;funcion que obtiene el primer elemento de una sublista
(define(primer_elemento_sublista_logout lista)
  (if(list? lista) (caar lista)null))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))