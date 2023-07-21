#lang racket
;funciones a realizar para tda system - decrypt
;Dominio->system x password(string) x folderName(string)
;Recorrido->system
;unción para desencriptar un archivo o carpeta y todo su contenido (nombres de carpetas, subcarpetas, archivos y el contenido de éstos)
(define (decrypt system password folderName)
  (if(null? system)#f
     system))

;funcion run para ejecutar el comando decrypt en el sistema
(define (run system command)
  (lambda(password folderName)
    (command system password folderName)))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))
    