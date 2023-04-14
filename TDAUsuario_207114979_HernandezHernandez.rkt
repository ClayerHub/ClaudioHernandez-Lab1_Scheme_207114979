#lang racket
;El TDA de los usuarios requiere del TDA de la fecha para ser elaborado

(require "aqui-se-registra-el-nombre-del-tda-fecha.rkt")
;Este TDA representa un usuario, donde se incluye el registro de fecha y el
;nombre de usuario. Estos datos seran guardados en una lista que lleve el mismo orden
;(fecha X (nombre-usuario) string)

;Funcion que guarda el registro de fecha y el usuario, y los guarda en una lista
(define (usuario fecha nombre-usuario)
  (list fecha nombre-usuario))

;Funcion que verifica si el formato de usuario esta correcto
(define (usuario? nombre-usuario)
  (if (list? nombre-usuario)
      (if(and(string? (cadr nombre-usuario)))#t
      #f)
  #f))

;Funcion que retorna la fecha de registro
(define (get-fecha-usuario fecha-registro)
  (if(usuario? fecha-registro)(car fecha-usuario)null))

;Funcion que retorna el nombre del usuario
(define (get-nombre-usuario nombre)
  (if(usuario? nombre)(cadr nombre)null))

;Funcion que retorna el primer usuario de la lista de usuarios
(define (car-lista-usuarios lista-usuarios)
  (if(list? lista-usuarios) (car lista-usuarios)null))

;Funcion que retorna los usuarios de la lista de usuarios, excepto el primero
(define (cdr-lista-usuarios lista-usuarios)
  (if(list? lista-usuarios) (cdr lista-usuarios)null))

;Funcion que agrega un usuario a la lista de usuarios, pero primero realiza una revision recursiva para verificar que ese usuario ya exista
(define (agregar-usuario lista-usuarios usuario booleano)
  (if(or(or(not (usuario? usuario))(not(list? lista-usuarios)))(not(boolean? booleano))) null
     (if(null? lista-usuarios)
        (if (equal? booleano #t) null
            (cons usuario null))
        (if(not(equal? (get-nombre-usuario usuario)(get-nombre-usuario(car-lista-usuarios lista-usuarios))))
           (cons (car-lista-usuarios lista-usuarios) (agregar-usuario(cdr-lista-usuarios lista-usuarios) usuario booleano))
           (cons (car-lista-usuarios lista-usuarios) (agregar-usuario(cdr-lista-usuarios lista-usuarios) usuario #t))))))

;Funcion que compara los nombres de dos usuarios para revisar si son el mismo
(define (mismo-nombre? usuario-1 usuario-2)
  (if(and(usuario? usuario-1)(usuario? usuario-2))
     (if(equal?(get-nombre-usuario usuario-1)(get-nombre-usuario usuario-2))#t
        #f)
     null))

;Funcion que vuelve a string el nombre de usuario y la fecha de registro de un usuario
(define(usuario-string usuario)
  (if(usuario? usuario)
     (string-join(list "\n" "Nombre de usuario:" (get-nombre-usuario usuario) "\n" "Fecha de registro:" (get-fecha-usuario usuario) "\n"))""))

;provide permite utilizar las funciones del TDA en otros archivos
(provide (all-defined-out))