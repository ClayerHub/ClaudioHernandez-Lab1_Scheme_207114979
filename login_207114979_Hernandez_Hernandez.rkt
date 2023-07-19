#lang racket

;funciones a realizar para tda system - login
;Dominio->system X userName (String)
;Recorrido->system

;funcion que que permite iniciar sesión con un usuario del sistema, solo si ya existe
(define (login system userName)
    (if(null? system)#f
       (if(and (verificar_system_login system)(verificar_userName_login userName)(usuario_existente_login? system userName)(<(length system)5))
          (agregar_valor_login system userName 4)
          (if(and(verificar_system_login system)(verificar_userName_login userName)(usuario_existente_login? system userName)
                 (>(length system)4)(login_existente? system userName))
             system
          #f))))
    
;funcion que agrega un valor en una posicion especifica
(define (agregar_valor_login lista name posicion)
  (if (null? lista)(list name)
      (if (= posicion 0) (cons name lista)
      (cons (primer_elemento_lista_login lista)(agregar_valor_login(resto_lista_login lista)name(- posicion 1))))))
  
;funcion que verifica si el elemento es una lista
(define (verificar_system_login system)
  (if (list? system) #t
      #f))

;funcion que verifica si el elemento es un string
(define (verificar_userName_login userName)
  (if (string? userName) #t
      #f))

;funcion que verifica si el usuario a logear ya existe en el system
(define (usuario_existente_login? system userName)
  (if(null?(cuarto_elemento_lista_login system))#f
     (or(string=? (primer_elemento_lista_login(cuarto_elemento_lista_login system)) userName)
        (usuario_existente_login? (list (primer_elemento_lista_login system)
                                        (segundo_elemento_lista_login system) (tercer_elemento_lista_login system)
                                        (resto_lista_login(cuarto_elemento_lista_login system)))userName))))

;funcion que verifica si ya se esta logeado (en caso de ser el mismo usuario, cuenta como valido pero no se vuelve a escribir)
(define (login_existente? system userName)
  (equal? (quinto_elemento_lista_login system)userName))

;funcion que obtiene los elementos de una lista, excepto el primero
(define (resto_lista_login lista)
  (if (list? lista) (cdr lista)null))

;funcion que obtiene el primer elemento de una lista
(define (primer_elemento_lista_login lista)
  (if(list? lista)(car lista)null))

;funcion que obtiene el segundo elemento de una lista
(define (segundo_elemento_lista_login lista)
  (if(list? lista)(cadr lista)null))
  
;funcion que obtiene el tercer elemento de una lista
(define (tercer_elemento_lista_login lista)
  (if(list? lista)(caddr lista)null))

;funcion que obtiene el cuarto elemento de una lista
(define (cuarto_elemento_lista_login lista)
  (if(list? lista)(cadddr lista)null))

;funcion que obtiene el quinto elemento de una lista
(define (quinto_elemento_lista_login lista)
  (if(list? lista)(list-ref lista 4)null))


;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))


