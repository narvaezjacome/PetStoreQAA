# PetStoreQAA

## Tienda de mascotas
La empresa pet store quiere construir el backend de un ecomerce para ofertar la adopción de mascotas.
Exisitiran 3 módulos principales:
Pet - Todo acerca de las mascotas:
- Crear una mascota
- Añadir imagenes de la mascota
- Actualizar información de una mascota
- Filtrar por mascotas (estado - id)
- Eliminar una mascota
Store - Ordenes de compra
- Crear un pedido para una mascota
- Filtrar pedidos (id - estado)
- Eliminar un pedido
User - operaciones de usuario:
- Crear usuario
- Inciar sesión
- Cerrar sesión
- Eliminar usuario
- Actualizar información del usuario
- Filtrar usuario (username)

***
Dada la contextualización del proyecto, se realizo un plan de pruebas

***
Tenemos las siguientes historias de usuario, para el módulo pet https://trello.com/invite/b/LgGPmbu6/23e781c55f5b5335e35542fb7efb3c9a/pet-store
***
De las historias de usuario compartidas, se crearon casos de prueba pertienete

***
## ¡PRUEBAS EXPLORATORIAS!

Con la siguiente documentación de la API (petstore): https://petstore.swagger.io/
- Generar el test charter para las pruebas exploratorias
- Crear una colección para la API petstore
- Crear las variables de entorno necesarias para correr la colección
- Realizar pruebas exploratorias en postman y generar la evidencias
- Reportar los bugs detectados
- Plus + : Guardar variables de un endpoint y consumir la variable en otro endpoint, utilizar datos random para algunos campos
***

_En git se encontrara la siguiente documentación:_
### Carpeta Documentación:
<pre>- Plan de pruebas (word)
- Test Charter (word)</pre>
### Carpeta Evidencias:
<pre>- Evidencias (pantallazos, videos...) de las pruebas exploratorias realizadas, para toda la API.</pre>
### Carpeta Diseño y ejecucón
<pre>- Casos de prueba (word)
- Bugs detectados (word)</pre>
### Carpeta pruebas exploratorias
<pre>- json con la colección creada (json)</pre>

***

Se escoge los dos casos de prueba más significativos que
realizaste para los siguentes endpoints:
- [Backend] Agregar una mascota en la tienda <pre>https://trello.com/c/CmkZjB6c/2-backend-agregar-unamascotaen-la-tienda</pre>
- [Backend] Actualizar información de una mascota <pre>https://trello.com/c/7AjY2Uc7/3-backendactualizarinformaci%C3%B3n-de-una-mascota</pre>
- [Backend] Actualizar información de una mascota <pre>https://trello.com/c/7AjY2Uc7/3-backendactualizarinformaci%C3%B3n-de-una-mascota</pre>
- [Backend] Eliminar una mascota <pre>https://trello.com/c/4tNtZEGH/6-backend-eliminar-una-mascota</pre>
De los 2 casos de prueba seleccionados:
- Crear un proyecto y automatizar los casos de prueba en Karate.
***

Con el proyecto que realizaste de petstore en Karate aplicar
refactorización:
- Se aplican buenas prácticas _(charla de buenas prácticas que se dictó)_
- Organizar el código en carpetas
- Utilizar tags
- Revisar que todos los nombres de archivos y variables siga una notación ejm PascalCase
- Buena utilziación de .gitignore
- Completar el readme
- En el PR adjuntar evidencia de que los test continuan corriendo
- Utilizar assert para validar y comparar uno a uno valores específicos, y utilizar match para validar valores en conjunto 
###### CodeReview --> <pre>Si a tu compañero no cumple con alguno de los parámetros anteriormente mencionados, dejarles un comentario especifico en el archivo, preguntando porque se hizo de determianda manera. (corregir los ajustes que te piden)<pre>
#### Automatizar:
create user <pre> https://petstore.swagger.io/#/user/createUser</pre>
login user <pre> https://petstore.swagger.io/#/user/loginUser</pre>
Donde login user obtendra las variables desde el response de create user


