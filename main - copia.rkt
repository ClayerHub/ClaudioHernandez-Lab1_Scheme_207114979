#lang racket
(require racket/date)
(require "constructor_207114979_Hernandez_Hernandez.rkt")
(require "add-drive_207114979_Hernandez_Hernandez.rkt")
(require "login_207114979_Hernandez_Hernandez.rkt")
(require "logout_207114979_Hernandez_Hernandez.rkt")
(require "register_207114979_Hernandez_Hernandez.rkt")
(require "switch-drive_207114979_Hernandez_Hernandez.rkt")
(require "encrypt_207114979_Hernandez_Hernandez.rkt")
(require "ren_207114979_Hernandez_Hernandez.rkt")
(require "decrypt_207114979_Hernandez_Hernandez.rkt")
(require "dir_207114979_Hernandez_Hernandez.rkt")
(require "format_207114979_Hernandez_Hernandez.rkt")
(require "grep_207114979_Hernandez_Hernandez.rkt")
(require "restore_207114979_Hernandez_Hernandez.rkt")
(require "copy_207114979_Hernandez_Hernandez.rkt")
(require "move_207114979_Hernandez_Hernandez.rkt")
(require "cd_207114979_Hernandez_Hernandez.rkt")
(require "view-trash_207114979_Hernandez_Hernandez.rkt")
(require "rd_207114979_Hernandez_Hernandez.rkt")
(require "minus-one_207114979_Hernandez_Hernandez.rkt")
(require "plus-one_207114979_Hernandez_Hernandez.rkt")
(require "add-file_207114979_Hernandez_Hernandez.rkt")
(require "del_207114979_Hernandez_Hernandez.rkt")


;Provide permite a que otros archivos puedan utilizar sus funciones
(provide (all-defined-out))
#|
;creando un sistema
(define S0 (system "newSystem"))

;añadiendo unidades. Incluye caso S2 que intenta añadir unidad con una letra que ya existe
(define S1 (add-drive S0 #\C "SO" 1000))
(define S2 (add-drive S1 #\C "SO" 1000))
(define S3 (add-drive S2 #\D "Util" 2000))

;añadiendo usuarios. Incluye caso S6 que intenta registrar usuario duplicado
(define S4 (register S3 "user1"))
(define S5 (register S4 "user1"))
(define S6 (register S5 "user2"))

;iniciando sesión con usuarios. Incluye caso S8 que intenta iniciar sesión con user2 sin antes haber salido con user1
(define S7 (login S6 "user1"))
(define S8 (login S7 "user2"))

;cerrando sesión user1 e iniciando con user2
(define S9 (logout S8))
(define S10 (login S9 "user2"))

;cambios de unidad, incluyendo unidad inexistente K
(define S11 (switch-drive S10 #\K))
(define S12 (switch-drive S11 #\C))

;añadiendo carpetas. Incluye casos de carpetas duplicadas.
(define S13 (md S12 "folder1"))
(define S14 (md S13 "folder2"))
(define S15 (md S14 "folder2"))
(define S16 (md S15 "folder3"))


;ingresa a carpeta folder2
(define S17 (cd S16 "folder2"))

;crea subcarpeta folder21 dentro de folder2 (incluye caso S19 de carpeta con nombre duplicado)
(define S18 (md S17 "folder21"))
(define S19 (md S18 "folder21"))

;ingresa a subcarpeta e intenta ingresar a subcarpeta inexistente S221
(define S20 (cd S19 "folder21"))
(define S21 (cd S20 "folder22"))

;vuelve a carpeta anterior
(define S22 (cd S21 ".."))

;vuelve a ingresar folder21
(define S23 (cd S22 "folder21"))

;crea subcarpeta folder211 e ingresa
(define S24 (md S23 "folder211"))
(define S25 (cd S24 "folder211"))

;vuelve a la raíz de la unidad c:/
(define S26 (cd S25 "/"))

;se cambia de unidad
(define S27 (switch-drive S26 #\D))

;crea carpeta e ingresa a carpeta
(define S28 (md S27 "folder5"))
(define S29 (cd S28 "folder5"))

;se cambia de carpeta en base a la ruta especificada
(define S30 (cd S29 "C:/folder1/"))

;formateando drive D:
(define S31 (format S30 #\D "newD"))

;añadiendo archivos
(define S32 (add-file S31 '("foo1.txt" "txt" "hello world 1")))
(define S33 (add-file S32 '("foo2.txt" "txt" "hello world 2")))
(define S34 (add-file S33 '("foo3.docx" "docx" "hello world 3")))

;eliminando archivos
(define S35 (del S34 "*.txt"))
(define S36 (del S35 "f*.docx"))
(define S37 (del S36 "goo4.docx"))
(define S38 (cd S37 ".."))
(define S39 (del S38 "folder1"))

;borrando una carpeta
(define S40 (rd S39 "folder1"))  ;no debería borrarla, pues tiene archivos
(define S41 (cd S40 "folder1"))
(define S42 (del S41 "*.*"))
(define S43 (cd S42 ".."))
(define S44 (rd S43 "folder1"))

;copiando carpetas y archivos
(define S45 (copy S44 "foo1.txt" "Cc:/folder3/"))
(define S46 (cd S45 ".."))
(define S47 (copy S46 "folder1" "d:/"))

;moviendo carpetas y archivos
(define S48 (move S47 "folder3" "d:/"))
(define S49 (cd S48 "folder1"))
(define S50 (move S49 "foo3.docx" "d:/folder3/"))

;renombrando carpetas y archivos
(define S51 (ren S50 "foo1.txt" "newFoo1.txt"))
(define S52 (ren S51 "foo2.txt" "newFoo1.txt")) ;no debería efectuar cambios pues ya existe archivo con este nombre
(define S53 (cd S52 ".."))
(define S54 (ren S53 "folder1" "newFolder1"))

;listando la información
(display (dir S53 "/s")) ;muestra carpetas y subcarpetas de la unidad C
(display (dir S53 "/s /a")) ;muestra todo el contenido de carpetas y subcarpetas de la unidad C incluyendo archivo oculto goo4.docx

;encriptando archivos y carpetas
(define S55 (encrypt S53 plus-one minus-one "1234" "newFolder1"))
(define S56 (switch-drive S55 #\D))
(define S57 (cd S56 "folder3"))
(define S58 (encrypt S57 plus-one minus-one "4321" "foo3.docx"))

;desencriptando archivos y carpetas
(define S59 (decrypt S58 "1234" "foo3.docx")) ;no logra desencriptar por clave incorrecta
(define s60 (decrypt S59 "4321" "foo3.docx"))
(define S61 (switch-drive S60 #\#C))
(define S62 (decrypt S61 "1234" "newFolder1"))

;;buscando contenido
(define S63 (cd S62 "newFolder1"))
(display (grep S63 "hello" "newFoo1.txt"))
(display (grep S63 "hello" "*.*"))

;viendo la papelera
(display (viewTrash S63))

;restaurando
(define S64 (restore S63 "folder1"))
|#