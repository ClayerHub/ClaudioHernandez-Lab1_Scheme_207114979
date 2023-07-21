#lang racket
#|;creando un sistema
(define S0 (system "newSystem"))

;añadiendo unidades. Incluye caso S2 que intenta añadir unidad con una letra que ya existe
(define S1 ((run S0 add-drive) #\C "SO" 1000))
(define S2 ((run S1 add-drive) #\C "SO1" 3000))
(define S3 ((run S2 add-drive) #\D "Util" 2000))

;añadiendo usuarios. Incluye caso S6 que intenta registrar usuario duplicado
(define S4 ((run S3 register) "user1"))
(define S5 ((run S4 register) "user1"))
(define S6 ((run S5 register) "user2"))

;iniciando sesión con usuarios. Incluye caso S8 que intenta iniciar sesión con user2 sin antes haber salido con user1
(define S7 ((run S6 login) "user1"))
(define S8 ((run S7 login) "user2"))

;cerrando sesión user1 e iniciando con user2
(define S9 (run S8 logout))
(define S10 ((run S9 login) "user2"))

;cambios de unidad, incluyendo unidad inexistente K
(define S11 ((run S10 switch-drive) #\K))
(define S12 ((run S11 switch-drive) #\C))

;añadiendo carpetas. Incluye casos de carpetas duplicadas.
(define S13 ((run S12 md) "folder1"))
(define S14 ((run S13 md) "folder2"))
(define S15 ((run S14 md) "folder2"))
(define S16 ((run S15 md) "folder3"))


;ingresa a carpeta folder2
(define S17 ((run S16 cd) "folder2"))

;crea subcarpeta folder21 dentro de folder2 (incluye caso S19 de carpeta con nombre duplicado)
(define S18 ((run S17 md) "folder21"))
(define S19 ((run S18 md) "folder21"))

;ingresa a subcarpeta e intenta ingresar a subcarpeta inexistente S221
(define S20 ((run S19 cd) "folder21"))
(define S21 ((run S20 cd) "folder22"))

;vuelve a carpeta anterior
(define S22 ((run S21 cd) ".."))

;vuelve a ingresar folder21
(define S23 ((run S22 cd) "folder21"))

;crea subcarpeta folder211 e ingresa
(define S24 ((run S23 md) "folder211"))
(define S25 ((run S24 cd) "folder211"))

;vuelve a la raíz de la unidad c:/
(define S26 ((run S24 cd) "/"))

;se cambia de unidad
(define S27 ((run S26 switch-drive) #\D))

;crea carpeta e ingresa a carpeta
(define S28 ((run S27 md) "folder5"))
(define S29 ((run S28 cd) "folder5"))

;se cambia de carpeta en base a la ruta especificada
(define S30 ((run S29 cd) "C:/folder1/"))

;formateando drive D:
(define S31 ((run S30 format) #\D "newD"))

;añadiendo archivos
(define S32 ((run S31 add-file) '("foo1.txt" "txt" "hello world 1")))
(define S33 ((run S32 add-file) '("foo2.txt" "txt" "hello world 2")))
(define S34 ((run S33 add-file) '("foo3.docx" "docx" "hello world 3")))

;eliminando archivos
(define S35 ((run S34 del) "*.txt"))
(define S36 ((run S35 del) "f*.docx"))
(define S37 ((run S36 del) "goo4.docx"))
(define S38 ((run S37 cd) ".."))
(define S39 ((run S38 del) "folder1"))

;borrando una carpeta
(define S40 ((run S39 rd) "folder1"))  ;no debería borrarla, pues tiene archivos
(define S41 ((run S40 cd) "folder1"))
(define S42 ((run S41 del) "*.*"))
(define S43 ((run S42 cd) ".."))
(define S44 ((run S43 rd) "folder1"))

;copiando carpetas y archivos
(define S45 ((run S44 copy) "foo1.txt" "Cc:/folder3/"))
(define S46 ((run S45 cd) ".."))
(define S47 ((run S46 copy) "folder1" "d:/"))

;moviendo carpetas y archivos
(define S48 ((run S47 move) "folder3" "d:/"))
(define S49 ((run S48 cd) "folder1"))
(define S50 ((run S49 move) "foo3.docx" "d:/folder3/"))

;renombrando carpetas y archivos
(define S51 ((run S50 ren) "foo1.txt" "newFoo1.txt"))
(define S52 ((run S51 ren) "foo2.txt" "newFoo1.txt")) ;no debería efectuar cambios pues ya existe archivo con este nombre
(define S53 ((run S52 cd) ".."))
(define S54 ((run S53 ren) "folder1" "newFolder1"))

;listando la información
(display ((run S53 dir) "/s")) ;muestra carpetas y subcarpetas de la unidad C
(display ((run S53 dir) "/s /a")) ;muestra todo el contenido de carpetas y subcarpetas de la unidad C incluyendo archivo oculto goo4.docx

;encriptando archivos y carpetas
(define S55 ((run S53 encrypt) plus-one minus-one "1234" "newFolder1"))
(define S56 ((run S55 switch-drive) #\\#D))
(define S57 ((run S56 cd) "folder3"))
(define S58 ((run S57 encrypt) plus-one minus-one "4321" "foo3.docx"))

;desencriptando archivos y carpetas
(define S59 ((run S58 decrypt) "1234" "foo3.docx")) ;no logra desencriptar por clave incorrecta
(define S60 ((run S59 decrypt) "4321" "foo3.docx"))
(define S61 ((run S60 switch-drive) #\\#C))
(define S62 ((run S61 decrypt) "1234" "newFolder1"))

;;buscando contenido
(define S63 ((run S62 cd) "newFolder1"))
(display ((run S63 grep) "hello" "newFoo1.txt"))
(display ((run S63 grep) "hello" "*.*"))

;viendo la papelera
(display (run S63 viewTrash))

;restaurando
(define S64 ((run S63 restore) "folder1"))|#