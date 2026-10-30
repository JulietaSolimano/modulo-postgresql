# modulo-postgresql
Proyecto de Análisis de Datos – RetailPro
1. Descripción del proyecto
Este proyecto tiene como objetivo analizar la información comercial de RetailPro mediante el uso de SQL, con el propósito de obtener información relevante sobre las ventas, los clientes y los productos.
El proyecto se desarrolla en distintas etapas, desde la creación de la base de datos hasta la integración de tablas mediante consultas JOIN y UNION ALL, preparando la información para su posterior visualización en Power BI.

2. Estructura del proyecto
El repositorio contiene los siguientes archivos:
Módulo 3: Ventas_Tech_DB, sobre creación de tablas y carga de datos de la base de datos.
Módulo 4: m4_consultas_negocio, con consultas SQL para explorar y analizar la información.
Módulo 5: m5_consultas_joins, sobre consultas con INNER JOIN, LEFT JOIN y UNION ALL para integrar información de ventas, clientes y productos.

3. Para ejecutar el proyecto
Para trabajar con este proyecto utilicé:
Un sistema gestor de bases de datos compatible con los scripts SQL utilizados: PostgreSQL 18.
Un entorno de consulta SQL, pgAdmin.
Los archivos SQL están disponibles en este repositorio.

4. Creación de la base de datos
Para crear y preparar la base de datos, seguí estos pasos:
Abrí el gestor de bases de datos utilizado.
Creé o seleccioné la base de datos correspondiente al proyecto.
Abrí y ejecuté el archivo SQL del Módulo 3, que contiene la estructura de las tablas y la carga de los datos de ejemplo.
Verifiqué que las tablas se hayan creado correctamente y que los registros estén disponibles.

5. Ejecución de las consultas SQL
Una vez creada y cargada la base de datos, ejecuté los archivos en el siguiente orden:
Módulo 4 – Consultas SQL
Contiene consultas para explorar los datos y obtener información sobre el comportamiento de las ventas.
Módulo 5 – Consultas con JOINs
Contiene las siguientes consultas:
Consulta 1: INNER JOIN para integrar las ventas con la información descriptiva de clientes y productos.
Consulta 2: LEFT JOIN para identificar clientes registrados que no realizaron compras.
Consulta 3: LEFT JOIN para identificar productos del catálogo que no registran ventas.
Consulta 4: UNION ALL para consolidar y comparar los resultados de ventas según el período definido.
Cada consulta incluye un comentario sobre su propósito y un hallazgo que interpreta los resultados desde una perspectiva de negocio.
