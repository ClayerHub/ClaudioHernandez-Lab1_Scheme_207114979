#lang racket
;funciones a realizar para tda system - encrypt
;Dominio->system x encryptFn (fn: String->String) X decryptFn (fn: String->String) password (String) X folderName or Path (String)
;Recorrido->system
;función para encriptar un archivo o carpeta y todo su contenido (nombres de carpetas, subcarpetas, archivos y el contenido de éstos)
(define(encrypt system encrypFn decryptFn password folderName)
  (if(null? system)#f
     system))

;funcion run para ejecutar el comando encrypt en el sistema
(define (run system command)
  (lambda(encrypFn decryptFn password folderName)
    (command system encrypFn decryptFn password folderName)))

;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))