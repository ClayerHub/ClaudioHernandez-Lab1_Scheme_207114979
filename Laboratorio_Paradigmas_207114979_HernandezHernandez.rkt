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

;El TDA de la fecha utilizara como base el "ejemplo de implementacion TDA Fecha (RG) subido en uvirtual como apoyo
;Este TDA representa un fecha, donde se incluye el dia, mes y año. Estos datos seran guardados en una lista que lleve el mismo orden
;(Mes) Int X (Dia) Int X (Año) Int


;Funcion que permite crear una fecha, la cual la entrega en una lista
(define (date-list dia mes anio)
  (if
   (and (integer? dia) (integer? mes) (integer? anio)
   (>= dia 1) (<= 31) (>= mes 1) (<= mes 12) (>= anio 0))
  (list dia mes anio)
  null))

;Funcion que revisa el mes en entero y lo pasa a su string correspondiente
(define (name-month nombre-del-mes)
  (cond ((= nombre-del-mes 1) "Enero")
        ((= nombre-del-mes 2) "Febrero")
        ((= nombre-del-mes 3) "Marzo")
        ((= nombre-del-mes 4) "Abril")
        ((= nombre-del-mes 5) "Mayo")
        ((= nombre-del-mes 6) "Junio")
        ((= nombre-del-mes 7) "Julio")
        ((= nombre-del-mes 8) "Agosto")
        ((= nombre-del-mes 9) "Septiembre")
        ((= nombre-del-mes 10) "Octubre")
        ((= nombre-del-mes 11) "Noviembre")
        ((= nombre-del-mes 12) "Diciembre"))) 

(provide (all-defined-out))