#lang racket
(require racket/date)
;funciones a realizar para tda system - md (make directory)
;Dominio->system x name(string)
;Recorrido->system
;función que permite crear directorio dentro de una unidad a partir del nombre especificado
(define (md system name)
  (if(and(verificar_system_md system)(verificar_string_md name)(< (length system)7))
     (list(primer_elemento_lista_md system)(segundo_elemento_lista_md system)(tercer_elemento_lista_md system)(cuarto_elemento_lista_md system)
             (quinto_elemento_lista_md system)(sexto_elemento_lista_md system)
             (list(list name (sexto_elemento_lista_md system)(quinto_elemento_lista_md system) (fecha_md name) (fecha_md name) "Solo Lectura")))
    (if(and(verificar_system_md system)(verificar_string_md name)(= (length system)7)(not(carpeta_existente_md? system name)))
       (list (primer_elemento_lista_md system)(segundo_elemento_lista_md system)(tercer_elemento_lista_md system)(cuarto_elemento_lista_md system)
             (quinto_elemento_lista_md system)(sexto_elemento_lista_md system)
             (append (septimo_elemento_lista_md system)(list(list name (sexto_elemento_lista_md system)(quinto_elemento_lista_md system) (fecha_md name) (fecha_md name) "Solo Lectura"))))
       (if(and(verificar_system_md system)(verificar_string_md name)(> (length system)7)(not(carpeta_existente_md? system name)))
          (agregar_valor_sublista_md system (list(list name (sexto_elemento_lista_md system)(quinto_elemento_lista_md system) (fecha_md name) (fecha_md name) "Solo Lectura")))#f))))
          


;funcion que agrega un valor en una posicion especifica de una sublista
(define (agregar_valor_sublista_md lista_ext lista_int)
  (cons (primer_elemento_lista_md lista_ext)
        (cons (segundo_elemento_lista_md lista_ext)
              (cons (tercer_elemento_lista_md lista_ext)
                    (cons (cuarto_elemento_lista_md lista_ext)
                          (cons (quinto_elemento_lista_md lista_ext)
                                (cons (sexto_elemento_lista_md lista_ext)
                                      (cons(append(septimo_elemento_lista_md lista_ext) lista_int)
                                           (rrresto_lista_md (rrresto_lista_md (resto_lista_md lista_ext)))))))))))

;funcion que verifica si la carpeta que se quiere ingresar ya existe en el mismo directorio
(define (carpeta_existente_md? system str)
  (if(null?(septimo_elemento_lista_md system))#f
     (or(string=? (primer_elemento_sublista_md(septimo_elemento_lista_md system)) str)
        (carpeta_existente_md? (list (primer_elemento_lista_md system)(segundo_elemento_lista_md system)(tercer_elemento_lista_md system)
                                     (cuarto_elemento_lista_md system)(quinto_elemento_lista_md system)(sexto_elemento_lista_md system)
                                     (resto_lista_md(septimo_elemento_lista_md system)))str))))
                                     
;funcion que verifica si el elemento es una lista
(define (verificar_system_md system)
  (if (list? system) #t
      #f))

;funcion que verifica si el elemento es un string
(define (verificar_string_md str)
  (if (string? str) #t
      #f))

;funcion que obtiene los elementos de una lista, excepto el primero
(define (resto_lista_md lista)
  (if (list? lista) (cdr lista)null))

;funcion que obtiene los elementos de una lista, excepto los primeros tres
(define (rrresto_lista_md lista)
  (if (list? lista) (cdddr lista)null))

;funcion que almacena tres elementos (day, month, year) en una lista
(define (fecha_md name)
  (list (date-day (current-date)) (date-month (current-date)) (date-year (current-date))))

;funcion que obtiene el primer elemento de una lista
(define (primer_elemento_lista_md lista)
  (if(list? lista)(car lista)null))

;funcion que obtiene el segundo elemento de una lista
(define (segundo_elemento_lista_md lista)
  (if(list? lista)(cadr lista)null))
  
;funcion que obtiene el tercer elemento de una lista
(define (tercer_elemento_lista_md lista)
  (if(list? lista)(caddr lista)null))

;funcion que obtiene el cuarto elemento de una lista
(define (cuarto_elemento_lista_md lista)
  (if(list? lista)(cadddr lista)null))

;funcion que obtiene el quinto elemento de una lista
(define (quinto_elemento_lista_md lista)
  (if(list? lista)(list-ref lista 4)null))

;funcion que obtiene el sexto elemento de una lista
(define (sexto_elemento_lista_md lista)
  (if(list? lista)(list-ref lista 5)null))

;funcion que obtiene el septimo elemento de una lista
(define (septimo_elemento_lista_md lista)
  (if(list? lista)(list-ref lista 6)null))

;funcion que obtiene el primer elemento de una sublista
(define(primer_elemento_sublista_md lista)
  (if(list? lista)(caar lista)null))


;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))