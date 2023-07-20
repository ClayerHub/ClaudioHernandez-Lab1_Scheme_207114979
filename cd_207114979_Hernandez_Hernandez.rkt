#lang racket
;funciones a realizar para tda system - cd (change directory)
;Dominio->system x folderName(string)
;Recorrido->system
;función que permite cambiar la ruta (path) donde se realizarán operaciones
(define (cd system folderName)
  (if(null? system)#f
     (if (and(punto_punto_cd folderName)(verificar_system_cd system)(verificar_string_cd folderName))
         (if(verificar_system_cd (sexto_elemento_lista_cd system))
            (cons (primer_elemento_lista_cd system)
                   (cons (segundo_elemento_lista_cd system)
                         (cons (tercer_elemento_lista_cd system)
                               (cons (cuarto_elemento_lista_cd system)
                                     (cons (quinto_elemento_lista_cd system)
                                           (cons (quitar_ultimo_cd (sexto_elemento_lista_cd system))
                                                  (rrresto_lista_cd (rrresto_lista_cd system))))))))system)
              
         (if (and(slash_inverso_cd folderName)(verificar_system_cd system)(verificar_string_cd folderName))
             (if (verificar_system_cd (sexto_elemento_lista_cd system))
                 (cons (primer_elemento_lista_cd system)
                   (cons (segundo_elemento_lista_cd system)
                         (cons (tercer_elemento_lista_cd system)
                               (cons (cuarto_elemento_lista_cd system)
                                     (cons (quinto_elemento_lista_cd system)
                                           (cons (primer_elemento_lista_cd(sexto_elemento_lista_cd system))
                                                 (rrresto_lista_cd (rrresto_lista_cd system))))))))system)
                 
             (if(and (verificar_system_cd system)(verificar_string_cd folderName)(comparar_sublista_cd system folderName))
                (if (verificar_system_cd (sexto_elemento_lista_cd system))
                    (cons (primer_elemento_lista_cd system)  
                          (cons (segundo_elemento_lista_cd system)
                                (cons (tercer_elemento_lista_cd system)
                                      (cons (cuarto_elemento_lista_cd system)
                                            (cons (quinto_elemento_lista_cd system)
                                                  (cons (append (sexto_elemento_lista_cd system) (list folderName))
                                                        (rrresto_lista_cd (rrresto_lista_cd system))))))))                    
                    (cons (primer_elemento_lista_cd system)
                   (cons (segundo_elemento_lista_cd system)
                         (cons (tercer_elemento_lista_cd system)
                               (cons (cuarto_elemento_lista_cd system)
                                     (cons (quinto_elemento_lista_cd system)
                                           (cons (list (sexto_elemento_lista_cd system) folderName)
                                                 (rrresto_lista_cd (rrresto_lista_cd system)))))))))
                #f)))))
                    
                                                

;funcion que verifica si el elemento es una lista
(define (verificar_system_cd system)
  (if (list? system) #t
      #f))

;funcion que verifica si el elemento es un string
(define (verificar_string_cd str)
  (if (string? str) #t
      #f))

;funcion que iguala el valor ingresado con la opcion ".."
(define (punto_punto_cd folderName)
  (string=? folderName ".."))

;funcion que iguala el valor ingresado con la opcion "/"
(define (slash_inverso_cd folderName)
  (string=? folderName "/"))

;funcion que revisa si el valor de la lista
(define (comparar_sublista_cd lista folderName)
  (if(null? (septimo_elemento_lista_cd lista))#f
     (if(string=? (primer_elemento_sublista_cd (septimo_elemento_lista_cd lista))folderName)#t
         (comparar_sublista_cd (list (primer_elemento_lista_cd lista)(segundo_elemento_lista_cd lista)(tercer_elemento_lista_cd lista)
                                    (cuarto_elemento_lista_cd lista)(quinto_elemento_lista_cd lista)(sexto_elemento_lista_cd lista)
                                     (resto_lista_cd (septimo_elemento_lista_cd lista))) folderName))))
  
;funcion que quita el ultimo elemento de una lista
(define (quitar_ultimo_cd lista)
  (if (null? (cdr lista))null
      (cons (car lista)(quitar_ultimo_cd (resto_lista_cd lista)))))

;funcion que obtiene los elementos de una lista, excepto el primero
(define (resto_lista_cd lista)
  (if (list? lista) (cdr lista)null))

;funcion que obtiene los elementos de una lista, excepto los primeros tres
(define (rrresto_lista_cd lista)
  (if (list? lista) (cdddr lista)null))

;funcion que obtiene el primer elemento de una sublista
(define(primer_elemento_sublista_cd lista)
  (if(list? lista)(caar lista)null))

;funcion que obtiene el primer elemento de una lista
(define(primer_elemento_lista_cd lista)
  (if(list? lista)(car lista)null))

;funcion que obtiene el segundo elemento de una lista
(define (segundo_elemento_lista_cd lista)
  (if(list? lista)(cadr lista)null))
  
;funcion que obtiene el tercer elemento de una lista
(define (tercer_elemento_lista_cd lista)
  (if(list? lista)(caddr lista)null))

;funcion que obtiene el cuarto elemento de una lista
(define (cuarto_elemento_lista_cd lista)
  (if(list? lista)(cadddr lista)null))

;funcion que obtiene el quinto elemento de una lista
(define (quinto_elemento_lista_cd lista)
  (if(list? lista)(list-ref lista 4)null))

;funcion que obtiene el sexto elemento de una lista
(define (sexto_elemento_lista_cd lista)
  (if(list? lista)(list-ref lista 5)null))

;funcion que obtiene el septimo elemento de una lista
(define (septimo_elemento_lista_cd lista)
  (if(list? lista)(list-ref lista 6)null))




;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))