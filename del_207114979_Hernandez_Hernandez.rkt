#lang racket
;funciones a realizar para tda system - del
;Dominio->system x fileName(string)
;Recorrido->system

; función para eliminar un archivo en base a un nombre especifico
(define (del system fileName)
  (if(null? list)#f
     (if (<(length system)8)#f
         (if(and(verificar_system_del system)(verificar_string_del fileName)(=(length system)8))
            (mismo_nombre_y_direccion? system fileName system)
            (if (and(verificar_system_del system)(verificar_string_del fileName)(>(length system)8))
                (append(mismo_nombre_y_direccion? system fileName system) (rrresto_lista_del (rrresto_lista_del (rrresto_lista_del system))))
                #f)))))

;funcion run para ejecutar el comando del en el sistema
(define (run system command)
  (lambda(fileName)
    (command system fileName)))

;funcion que obtiene los elementos de una lista, excepto los primeros tres
(define (rrresto_lista_del lista)
  (if (list? lista) (cdddr lista)null))

;funcion que verifica si el elemento es una lista
(define (verificar_system_del system)
  (if (list? system) #t
      #f))

;funcion que verifica si el elemento es un string
(define (verificar_string_del str)
  (if (string? str) #t
      #f))

;funcion que comprueba si el fileName tiene el mismo valor que uno especifico de una sublista dentro de la lista
(define (mismo_nombre_y_direccion? lista fileName system)
  (if (null? (octavo_elemento_lista_del lista))#f
      (if(and(string=? (primer_elemento_sublista_del (octavo_elemento_lista_del lista))fileName)
             (equal? (cuarto_elemento_lista_del (primer_elemento_lista_del (octavo_elemento_lista_del lista)))(sexto_elemento_lista_del lista)))
         (append (remove (primer_elemento_lista_del (octavo_elemento_lista_del system))system) (list(primer_elemento_lista_del (octavo_elemento_lista_del system))))
         (mismo_nombre_y_direccion?(list (primer_elemento_lista_del lista)(segundo_elemento_lista_del lista)(tercer_elemento_lista_del lista)
                                         (cuarto_elemento_lista_del lista)(quinto_elemento_lista_del lista)(sexto_elemento_lista_del lista)
                                         (septimo_elemento_lista_del lista)(resto_lista_del (octavo_elemento_lista_del lista)))fileName system))))
                                                                                                                                                      
         
;funcion que entrega el primer valor de una sublista
(define (primer_elemento_sublista_del lista)
  (if (list? lista) (caar lista)null))

;funcion que entrega el cuarto valor de una sublista
(define (cuarto_elemento_sublista_del lista)
  (if (list? lista) (cadddr lista)null))

;funcion que entrega el primer valor de una lista
(define (primer_elemento_lista_del lista)
  (if (list? lista) (car lista)null))

;funcion que obtiene los elementos de una lista, excepto el primero
(define (resto_lista_del lista)
  (if (list? lista) (cdr lista)null))

;funcion que entrega el segundo valor de una lista
(define (segundo_elemento_lista_del lista)
  (if (list? lista) (cadr lista)null))

;funcion que entrega el tercer valor de una lista
(define (tercer_elemento_lista_del lista)
  (if (list? lista) (caddr lista)null))

;funcion que obtiene el cuarto elemento de una lista
(define (cuarto_elemento_lista_del lista)
  (if(list? lista)(cadddr lista)null))

;funcion que obtiene el quinto elemento de una lista
(define (quinto_elemento_lista_del lista)
  (if(list? lista)(list-ref lista 4)null))

;funcion que obtiene el sexto elemento de una lista
(define (sexto_elemento_lista_del lista)
  (if(list? lista)(list-ref lista 5)null))

;funcion que obtiene el septimo elemento de una lista
(define (septimo_elemento_lista_del lista)
  (if(list? lista)(list-ref lista 6)null))

;funcion que obtiene el octavo elemento de una lista
(define (octavo_elemento_lista_del lista)
  (if(list? lista)(list-ref lista 7)null))         
         


;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))