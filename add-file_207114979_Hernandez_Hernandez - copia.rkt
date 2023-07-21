#lang racket
(require racket/date)
;funciones a realizar para tda system - add-file
;Dominio->system x file
;Recorrido->system
;función que permite añadir un archivo en la ruta actual
(define (add-file system file)
  (if (null? system)
      #f
      (if (and(verificar_system_add-file system)(verificar_file_string file)(<(length system)8))
          (list (primer_elemento_lista_add-file system)(segundo_elemento_lista_add-file system)(tercer_elemento_lista_add-file system)
                (cuarto_elemento_lista_add-file system)(quinto_elemento_lista_add-file system)(sexto_elemento_lista_add-file system)
                (septimo_elemento_lista_add-file system)(list (list (primer_elemento_lista_add-file file)(segundo_elemento_lista_add-file file)
                                                                   (tercer_elemento_lista_add-file file)(sexto_elemento_lista_add-file system)
                                                                   (quinto_elemento_lista_add-file system)(fecha_add-file file)
                                                                   (fecha_add-file file)"Lectura y Escritura")))
          
          (if (and(verificar_system_add-file system)(verificar_file_string file)(=(length system)8)
                  (not(comparar_sublista_add-file system (primer_elemento_lista_add-file file))))
              (list (primer_elemento_lista_add-file system)(segundo_elemento_lista_add-file system)(tercer_elemento_lista_add-file system)
                    (cuarto_elemento_lista_add-file system)(quinto_elemento_lista_add-file system)(sexto_elemento_lista_add-file system)
                    (septimo_elemento_lista_add-file system)(append (octavo_elemento_lista_add-file system)(list (list (primer_elemento_lista_add-file file)
                                                                                                                    (segundo_elemento_lista_add-file file)
                                                                                                                    (tercer_elemento_lista_add-file file)
                                                                                                                    (sexto_elemento_lista_add-file system)
                                                                                                                    (quinto_elemento_lista_add-file system)
                                                                                                                    (fecha_add-file file)(fecha_add-file file)
                                                                                                                    "Lectura y Escritura"))))     
              (if(and (verificar_system_add-file system)(verificar_file_string file)(>(length system)8)
                      (not(comparar_sublista_add-file system (primer_elemento_lista_add-file file))))
                 (list (primer_elemento_lista_add-file system)(segundo_elemento_lista_add-file system)(tercer_elemento_lista_add-file system)            
                       (cuarto_elemento_lista_add-file system)(quinto_elemento_lista_add-file system)(sexto_elemento_lista_add-file system)
                       (septimo_elemento_lista_add-file system)(append (octavo_elemento_lista_add-file system)(list (list (primer_elemento_lista_add-file file)                                                                                                  
                                                                                                                          (segundo_elemento_lista_add-file file)
                                                                                                                          (tercer_elemento_lista_add-file file)
                                                                                                                          (sexto_elemento_lista_add-file system)
                                                                                                                          (quinto_elemento_lista_add-file system)
                                                                                                                          (fecha_add-file file)(fecha_add-file file)
                                                                                                                          "Lectura y Escritura")))     
                       (rrresto_lista_add-file (rrresto_lista_add-file (rresto_lista_add-file system))))#f)))))
      

;funcion que obtiene los elementos de una lista, excepto los primeros dos
(define (rresto_lista_add-file lista)
  (if (list? lista) (cddr lista)null))
      
;funcion que obtiene los elementos de una lista, excepto los primeros tres
(define (rrresto_lista_add-file lista)
  (if (list? lista) (cdddr lista)null))                                   
  
;funcion que almacena tres elementos (day, month, year) en una lista
(define (fecha_add-file name)
  (list (date-day (current-date)) (date-month (current-date)) (date-year (current-date))))
  
;funcion que verifica si el elemento es una lista
(define (verificar_system_add-file system)
  (if (list? system) #t
      #f))

;funcion que verifica si el elemento es un string
(define (verificar_string_add-file str)
  (if (string? str) #t
      #f))

;funcion que verifica si los elementos de file son strings
(define(verificar_file_string lista)
  (if(and (verificar_string_add-file (primer_elemento_lista_add-file lista))(verificar_string_add-file(segundo_elemento_lista_add-file lista))
                                     (verificar_string_add-file(tercer_elemento_lista_add-file lista)))
     #t
     #f))

;funcion que entrega el primer valor de una sublista
(define (primer_elemento_sublista_add-file lista)
  (if (list? lista) (caar lista)null))

;funcion que entrega el primer valor de una lista
(define (primer_elemento_lista_add-file lista)
  (if (list? lista) (car lista)null))

;funcion que obtiene los elementos de una lista, excepto el primero
(define (resto_lista_add-file lista)
  (if (list? lista) (cdr lista)null))

;funcion que entrega el segundo valor de una lista
(define (segundo_elemento_lista_add-file lista)
  (if (list? lista) (cadr lista)null))

;funcion que entrega el tercer valor de una lista
(define (tercer_elemento_lista_add-file lista)
  (if (list? lista) (caddr lista)null))

;funcion que obtiene el cuarto elemento de una lista
(define (cuarto_elemento_lista_add-file lista)
  (if(list? lista)(cadddr lista)null))

;funcion que obtiene el quinto elemento de una lista
(define (quinto_elemento_lista_add-file lista)
  (if(list? lista)(list-ref lista 4)null))

;funcion que obtiene el sexto elemento de una lista
(define (sexto_elemento_lista_add-file lista)
  (if(list? lista)(list-ref lista 5)null))

;funcion que obtiene el septimo elemento de una lista
(define (septimo_elemento_lista_add-file lista)
  (if(list? lista)(list-ref lista 6)null))

;funcion que obtiene el octavo elemento de una lista
(define (octavo_elemento_lista_add-file lista)
  (if(list? lista)(list-ref lista 7)null))

;funcion que revisa si el primer valor de las sublistas de la septima posicion son iguales a file
(define (comparar_sublista_add-file lista file)
  (if(null? (octavo_elemento_lista_add-file lista))#f
     (if(string=? (primer_elemento_sublista_add-file (octavo_elemento_lista_add-file lista)) file)#t
         (comparar_sublista_add-file (list (primer_elemento_lista_add-file lista)(segundo_elemento_lista_add-file lista)(tercer_elemento_lista_add-file lista)
                                    (cuarto_elemento_lista_add-file lista)(quinto_elemento_lista_add-file lista)(sexto_elemento_lista_add-file lista)
                                     (septimo_elemento_lista_add-file lista)(resto_lista_add-file (octavo_elemento_lista_add-file lista))) file))))


;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))