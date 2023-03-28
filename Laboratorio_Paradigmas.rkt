#lang racket
#|
;Compartir (share)
(define share)
;Copiar (copy)
(define copy)
;Mover (move)
(define move)
;Eliminar archivos (del)
(define del)
;Añadir archivos (addFile)
(define addFile)
;Crear carpetas y subcarpetas, también llamados directorios (md)
(define md)
;Eliminar carpetas (rd)
(define rd)
;Cambiar de directorio (cd)
(define cd)
;Renombrar (ren)
(define ren)
;Buscar dentro del contenido de los archivos (grep)
(define grep)
;Listar archivos con parámetros tipo /s /a (dir)
(define dir)
;Formatear una unidad (format)
(define format)
;Encriptar (encrypt)
(define encrypt)
;Desencriptar (decrypt)
(define decrypt)
|#
;if devuelve el primer valor si es verdadero, y el segundo si es falso
(if #t "Verdadero" "Falso"); eso devuelve "Verdadero"
(if #f "Verdadero" "Falso"); eso devuelve "Falso"
;definicion que calcula el promedio entre dos numeros
(define (promedio x y) (/ (+ x y) 2))
