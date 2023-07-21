#lang racket

;funciones a realizar para tda system - switch-drive
;Dominio->system X letter(char)
;Recorrido->system

;funcion que fija la unidad en la que el usuario realizara acciones
(define (switch-drive system letter)
  (if(and(verificar_system_switch system)(verificar_letter_switch letter)(logeado? system)(unidad_existente_switch? system letter)(<=(length system)6))
     (list (primer_elemento_lista_switch system)(segundo_elemento_lista_switch system)(tercer_elemento_lista_switch system)
           (cuarto_elemento_lista_switch system)(quinto_elemento_lista_switch system)(string letter))
    (if(and(verificar_system_switch system)(verificar_letter_switch letter)(logeado? system)(unidad_existente_switch? system letter)(>(length system)6))
       (cons (primer_elemento_lista_switch system)
             (cons (segundo_elemento_lista_switch system)
                   (cons (tercer_elemento_lista_switch system)
                         (cons (cuarto_elemento_lista_switch system)
                               (cons (quinto_elemento_lista_switch system)
                                     (cons (string letter) (rrresto_lista_switch (rrresto_lista_switch system))))))))#f)))



;funcion que verifica si el elemento es una lista
(define (verificar_system_switch system)
  (if (list? system) #t
      #f))

;funcion que verifica si letter es un elemento char
(define (verificar_letter_switch letter)
  (if (char? letter) #t
      #f))

;funcion que verifica si el usuario esta con una sesion iniciada
(define (logeado? system )
  (if (< (length system)5)#f
      (or(string=?(primer_elemento_lista_switch(cuarto_elemento_lista_switch system))(quinto_elemento_lista_switch system))
                  (logeado? (list (primer_elemento_lista_switch system) (segundo_elemento_lista_switch system) (tercer_elemento_lista_switch system)(resto_lista_switch(cuarto_elemento_lista_switch system))))(quinto_elemento_lista_switch system))))

;funcion que verifica si la unidad que se quiere ingresar ya existe en el system
(define (unidad_existente_switch? system letter)
  (if(null?(tercer_elemento_lista_switch system))#f
     (or(char=? (primer_elemento_lista_switch(primer_elemento_lista_switch(tercer_elemento_lista_switch system))) letter)
        (unidad_existente_switch? (list (primer_elemento_lista_switch system) (segundo_elemento_lista_switch system) (resto_lista_switch(tercer_elemento_lista_switch system)))letter))))

;funcion que obtiene los elementos de una lista, excepto los primeros tres
(define (rrresto_lista_switch lista)
  (if (list? lista) (cdddr lista)null))

;funcion que obtiene los elementos de una lista, excepto el primero
(define (resto_lista_switch lista)
  (if (list? lista) (cdr lista)null))

;funcion que obtiene el primer elemento de una lista
(define (primer_elemento_lista_switch lista)
  (if(list? lista)(car lista)null))

;funcion que obtiene el segundo elemento de una lista
(define (segundo_elemento_lista_switch lista)
  (if(list? lista)(cadr lista)null))
  
;funcion que obtiene el tercer elemento de una lista
(define (tercer_elemento_lista_switch lista)
  (if(list? lista)(caddr lista)null))

;funcion que obtiene el cuarto elemento de una lista
(define (cuarto_elemento_lista_switch lista)
  (if(list? lista)(cadddr lista)null))

;funcion que permite acceder al quinto elemento de una lista
(define(quinto_elemento_lista_switch lista)
  (if(list? lista)(list-ref lista 4)null))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))
