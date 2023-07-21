#lang racket

;funciones a realizar para tda system - register
;Dominio->system X userName (String)
;Recorrido->system
;funcion que registra un nuevo usuario al sistema. Nombre de usuario unico
(define (register system userName)
    (if (null? system)#f
        (if(and (verificar_system_register system)(verificar_userName_register userName)(<(length system)4))
           (agregar_valor_register system (list userName) 4)
           (if(and (verificar_system_register system)(verificar_userName_register userName)(>(length system)3)
                   (not(usuario_existente_register? system userName)))
              (cons (primer_elemento_lista_register system)
                    (cons(segundo_elemento_lista_register system)
                         (cons(tercer_elemento_lista_register system)
                              (cons(append(cuarto_elemento_lista_register system) (list userName)) (rrrresto_lista_register system)))))#f))))
                    
;funcion run para ejecutar el comando add-drive en el sistema
;(define (run system command)
;  (lambda(userName)
;    (command system userName)))

;funcion que agrega un valor en una posicion especifica
(define (agregar_valor_register lista name posicion)
  (if (null? lista)(list name)
      (if (= posicion 0) (cons name lista)
      (cons (primer_elemento_lista_register lista)(agregar_valor_register(resto_lista_register lista)name(- posicion 1))))))


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

;funcion que obtiene los elementos de una lista, excepto los primeros 4
(define (rrrresto_lista_register lista)
  (if (list? lista) (cddddr lista)null))

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

