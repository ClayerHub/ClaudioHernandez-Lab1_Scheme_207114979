#lang racket
(require racket/date)

;funciones a realizar para tda system - run

;funcion que permite ejecutar cualquier funcion sobre el sistema, guardando 
(define (run system)(lambda(command)
                      (ejecucion_comando system command)))

;funcion que verifica si el elemento f es una funcion
(define (verificar-funcion command)
  (if (procedure? command) #t
      #f))

;funcion que compara el command ingresado con los permisos que pertenecen a esa funcion
;en caso de que el command no cumpla los permisos, entrega false
(define (ejecucion_comando system command)
  (if (verificar_permisos command) system #f))

;funcion que guarda la funcion y la fecha en la que se realizo dicha modificacion en una lista
(define (run-lista-datos f)
  (list f (date-day (current-date)) (date-month (current-date)) (date-year (current-date))))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))