#lang racket
;funciones a realizar para tda system - add-drive
;Dominio->system X letter (char) X name (String) X capacity (int)
;Recorrido->system
;función que permite añadir una unidad a un sistema. La letra de la unidad es única.
(define (addDrive system letter name capacity)
        (if (< (length system )2)#f
            (if (and(= (length system )2)(verificar_system_drive system)(verificar_letter_drive letter)(verificar_name_drive name)(verificar_capacity_drive capacity))
                (list(primer_elemento_lista_drive system)(segundo_elemento_lista_drive system)(list(list letter name capacity)))
                (if(and(verificar_system_drive system)(verificar_letter_drive letter)(verificar_name_drive name)(verificar_capacity_drive capacity)(not(unidad_existente_drive? system letter)))
                   (list(primer_elemento_lista_drive system)(segundo_elemento_lista_drive system)(append(tercer_elemento_lista_drive system)(list (list letter name capacity))))#f))))
              
;funcion que verifica si el elemento es una lista
(define (verificar_system_drive system)
  (if (list? system) #t
      #f))

;funcion que verifica si el elemento es un char
(define (verificar_letter_drive letter)
  (if (char? letter) #t
      #f))

;funcion que verifica si el elemento es un string
(define (verificar_name_drive name)
  (if (string? name) #t
      #f))
;funcion que verifica si el elemento es un entero
(define (verificar_capacity_drive capacity)
  (if (integer? capacity) #t
      #f))

;funcion que verifica si la unidad que se quiere ingresar ya existe en el system
(define (unidad_existente_drive? system letter)
  (if(null?(tercer_elemento_lista_drive system))#f
     (or(char=? (primer_elemento_sublista_drive(tercer_elemento_lista_drive system)) letter)
        (unidad_existente_drive? (list (primer_elemento_lista_drive system) (segundo_elemento_lista_drive system) (resto_lista_drive(tercer_elemento_lista_drive system)))letter))))


;funcion que obtiene los elementos de una lista, excepto el primero
(define (resto_lista_drive lista)
  (if (list? lista) (cdr lista)null))

;funcion que obtiene el primer elemento de una lista
(define (primer_elemento_lista_drive lista)
  (if(list? lista)(car lista)null))

;funcion que obtiene el segundo elemento de una lista
(define (segundo_elemento_lista_drive lista)
  (if(list? lista)(cadr lista)null))
  
;funcion que obtiene el tercer elemento de una lista
(define (tercer_elemento_lista_drive lista)
  (if(list? lista)(caddr lista)null))

;funcion que obtiene el primer elemento de una sublista
(define(primer_elemento_sublista_drive lista)
  (if(list? lista)(caar lista)null))


;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))


