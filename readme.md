Sistema basico de gestion de Biblioteca

## Descripción

Este proyecto es un sistema basico de gestion de usuarios y libros en una biblioteca, el cual permite agregar, eliminar y modificar usuarios y libros, ademas de permitir el prestamo de libros a los usuarios.

## Funcionalidad basicas

- Agregar y eliminar usuarios
- Agregar y eliminar libros
- Prestar libros a los usuarios
- Devolver libros prestados
- Ver libros prestados por un usuario
- Ver usuarios que tienen un libro prestado
- Ver libros disponibles
- Ver libros prestados
- Ver usuarios registrados
- Ver libros registrados

## Instalación

1. Clonar el repositorio.
2. Usar Tomcat 8.5.96 [Descargue Aquí](https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.96/bin/)
3. Usar Java 17 [Descargue Aquí](https://www.openlogic.com/openjdk-downloads?field_java_parent_version_target_id=807&field_operating_system_target_id=436&field_architecture_target_id=391&field_java_package_target_id=396)
4. Se usó Intellij IDEA, sin embargo puede usar cualquier IDE de su preferencia.
5. Se usó [Descargue Aquí](https://dev.mysql.com/downloads/mysql/)
6. Crear una base de datos en MySQL con el nombre `biblioteca`.
7. Ejecutar las scripts de sql ubicadas en la carpeta `scripts` del proyecto.

## Uso

1. Configurar el usuario y contraseña para el servidor Tomcat en el archivo `tomcat-users.xml` ubicado en la carpeta `conf` del servidor Tomcat.
2. Tener en cuenta y como recomendación crear un proyecto Maven en su IDE de preferencia. (Esto para que el proyecto se configure correctamente y al iniciar permita arrancar la pagina)
3. Ejecutar el servidor Tomcat. (Desde un ide o de forma externa)
4. Si todo funcionó ok puede ingresar a la URL: http://localhost:8080/Library/
5. Ingresar datos y comprobar funcionamiento.

## Autor

- [Jonathan Narvaez Posada](https://github.com/jonakls)