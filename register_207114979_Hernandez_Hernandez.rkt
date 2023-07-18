#lang racket

;funciones a realizar para tda system - register
;Dominio->system X userName (String)
;Recorrido->system
;funcion que registra un nuevo usuario al sistema. Nombre de usuario unico
(define (register system userName)
    (if (< (length system )3)#f
        (if (and(= (length system )3)(verificar_userName_register userName)(verificar_system_register system))
            (list(primer_elemento_lista_register system)(segundo_elemento_lista_register system)(tercer_elemento_lista_register system)(list userName))
            (if(and(verificar_userName_register userName)(verificar_system_register system)(not(usuario_existente_register? system userName)))
               (list(primer_elemento_lista_register system)(segundo_elemento_lista_register system)(tercer_elemento_lista_register system)(append(cuarto_elemento_lista_register system)(list userName)))#f))))
   
;funcion que verifica si el elemento es una lista
(define (verificar_system_register system)
  (if (list? system) #t
      #f))

;funcion que verifica si el elemento es un string
(define (verificar_userName_register userName)
  (if (string? userName) #t
      #f))

;funcion que verifica si el usuario a registrar ya existe en el system
(define (usuario_existente_register? system userName)
  (if(null?(cuarto_elemento_lista_register system))#f
     (or(string=? (primer_elemento_lista_register(cuarto_elemento_lista_register system)) userName)
        (usuario_existente_register? (list (primer_elemento_lista_register system) (segundo_elemento_lista_register system) (tercer_elemento_lista_register system) (resto_lista_register(cuarto_elemento_lista_register system)))userName))))


;funcion que obtiene los elementos de una lista, excepto el primero
(define (resto_lista_register lista)
  (if (list? lista) (cdr lista)null))

;funcion que obtiene el primer elemento de una lista
(define (primer_elemento_lista_register lista)
  (if(list? lista)(car lista)null))

;funcion que obtiene el segundo elemento de una lista
(define (segundo_elemento_lista_register lista)
  (if(list? lista)(cadr lista)null))
  
;funcion que obtiene el tercer elemento de una lista
(define (tercer_elemento_lista_register lista)
  (if(list? lista)(caddr lista)null))

;funcion que obtiene el cuarto elemento de una lista
(define (cuarto_elemento_lista_register lista)
  (if(list? lista)(cadddr lista)null))

;funcion que obtiene el primer elemento de una sublista
(define(primer_elemento_sublista_register lista)
  (if(list? lista) (caar lista)null))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))

