# prueba_hub
Archivo utilizado como analisis del laboratorio de Paradigmas de Programacion (01-2023). Este analisis servira como una idea de como abordar el trabajo en cuestion (puede que ideas escritas en este archivo no lleguen al formato final).

1.Soporte para múltiples usuarios
			Como bienvenida al usuario, se le permitirá el iniciar sesion en un usuario ya registrado (en el caso de que hay ya uno existente), o tambien poder crear un nuevo usuario
			*(aun no se tiene claro si se limitara la cantidad de usuarios a crear)*
			*(se desea implementar una manera para que el usuario pueda proteger su cuenta y escribirle una contraseña)*
2.Soporte para múltiples unidades físicas y lógicas
			Al ya haber iniciado sesion, se mostraran los distintos dispositivos de almanenamiento que posee el usuari
			*(se desea que las unidades esten ordenadas por nombre o espacio disponible/utilizado)*
3.Permisos por archivo, carpeta y por usuario
4.Operaciones del tipo:
	a.Compartir (share)
			Permite al usuario compartir un archivo con otros usuarios del mismo dispositivo
			*(cada usuario tendra su propia carpeta de archivos compartidos)*
	b.Copiar (copy)
			Permite al usuario hacer una copia del archivo y guardarlo en otra carpeta
			*(se desea que si el usuario pega el mismo archivo donde ya lo tiene guardado, se cree una segunda copia del mismo, modificando levemente el nombre)*
	c.Mover (move)
			Permite al usuario mover un archivo y guardarlo en otra carpeta
			*(si el usuario tiene un archivo con el mismo nombre en esa carpeta, se preguntara al usuario si desea sobrescribir dicho archivo. En caso contrario, no se movera)*
	d.Eliminar archivos (del)
			Permite al usuario que elimine un archivo y este vaya en direccion a la papelera de reciclaje de manera temporal
	e.Añadir archivos (addFile)
			Permite al usuario crear un archivo, donde al momento de crearlo podra modificar su nombre
			*(si en esa direccion ya existe un archivo con ese nombre, se le preguntara al usuario si desea sobrescribir el archivo, en caso contrario, el archivo creado quedara con el nombre por defecto)*
	f.Crear carpetas y subcarpetas, también llamados directorios (md)
			Permite al usuario crear una carpeta o una subcarpeta, donde al momento de crearla podra modificar su nombre
			*(si en esa direccion ya existe una carpeta o subcarpeta con ese nombre, se le preguntara al usuario si desea sobrescribir la carpeta o subcarpeta, en caso contrario, la carpeta o subcarpeta creada quedara con el nombre por defecto)*
	g.Eliminar carpetas (rd)
			Permite al usuario eliminar una carpeta por completo y enviarla a la papelera de reciclaje con todo su contenido de manera temporal
	h.Cambiar de directorio (cd)
			Permite al usuario ingresar un directorio y direccionarlo a el
			*(se desea que en el caso que se ingrese un directorio erroneo, se muestre un mensaje explicando que la direccion antes ingresada no existe)*
	i.Renombrar (ren)
			Permite al usuario renombrar algun archivo, carpeta o subcarpeta
	j.Buscar dentro del contenido de los archivos (grep)
			Permite al usuario buscar una palabra dentro de los archivos de una carpeta, mostrando en pantalla el archivo que posea dicha palabra buscada
			*(se desea aparte de mostrar el archivo que contenga la palabra, tambien la direccion en donde se encuentra)*
	k.Listar archivos con parámetros tipo /s /a (dir)
	l.Formatear una unidad (format)
			Permite al usuario realizar un formateo de una unidad, haciendo que todos los archivos almacenados en dicha unidad, sean eliminados
	m.Encriptar (encrypt)
	n.Desencriptar (decrypt)
5.Registro de fechas de creación y última modificación de carpetas y archivos
			Se mostrara en pantalla la fecha en la que el archivo o carpeta fueron creados, al igual que la ultima fecha en la que fueron modificados
6.Contará con una papelera donde los elementos eliminados quedan alojados de forma temporal.
			Esta papelera se encontrara en el menu donde se encuentran las unidades fisicas y logicas del usuario
7.Vaciar papelera de reciclaje
			Permite al usuario eliminar de manera permanente todos los archivos y carpetas guardadas temporalmente en la papelera de reciclaje
8.Restaurar elementos de papelera de reciclaje
			Permite al usuario devolver los archivos y carpetas almacenadas en la papelera de reciclaje a sus direcciones correspondientes




IDEAS QUE PODRIAN IMPLEMENTARSE (aparte de las antes mencionadas)

1.Bloquear un archivo o carpeta
			Permite al usuario bloquear un archivo o carpeta para que solamente se pueda ingresar a el mediante la contraseña del usuario
2.Buscar un archivo por su extension
			Permite al usuario hacer una busqueda de archivos, donde al ingresar una extension, se mostraran todos los archivos que posean dicha extension
3.Crear accesos directos para carpetas
			Permite al usuario crear un acceso directo de una carpeta para asi ingresar a esta desde otra direccion.
			*(se desea que los accesos directos no influyan al crear o renombrar otras carpetas)*
4.Ver las propiedades de un archivo o carpeta
			Permite al usuario poder visualizar informacion de un archivo o carpeta, tales como el tamaño, fecha de creacion, ultima fecha de modificacion, etc
5.Cambiar de usuario
			Permite al usuario realizar un cierre de sesion, y asi mostrar la pantalla para iniciar sesion en otros usuarios o crea otro nuevo
6.Apagar el sistema
			Permite al usuario finalizar la sesion y el programa en cuestion 

