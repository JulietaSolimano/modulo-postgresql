# modulo-postgresql
RetailPro – Proyecto de Análisis de Datos con PostgreSQL
1. Descripción del proyecto

RetailPro es un proyecto de análisis de datos orientado al estudio de la información comercial de una empresa del sector retail mediante el uso de consultas SQL en PostgreSQL.

El objetivo principal es explorar, analizar e integrar información relacionada con las ventas, los clientes, los productos y las categorías, con el propósito de obtener información relevante para comprender el comportamiento comercial del negocio.

El proyecto se desarrolla de manera progresiva en tres etapas: creación y carga de la base de datos, exploración de la información mediante consultas SQL e integración de datos utilizando diferentes tipos de JOIN y UNION ALL.

Los datos preparados y analizados constituyen una base de trabajo para una futura etapa de visualización y análisis mediante Power BI.

2. Herramientas utilizadas

Para el desarrollo del proyecto se utilizaron las siguientes herramientas:

PostgreSQL 18: sistema gestor de bases de datos utilizado para crear, almacenar y consultar la información.
pgAdmin: entorno gráfico utilizado para administrar la base de datos, ejecutar scripts SQL y visualizar los resultados de las consultas.
SQL: lenguaje utilizado para crear tablas, cargar datos, explorar información e integrar registros mediante consultas.

Herramienta prevista para una etapa posterior:

Power BI: herramienta destinada a la futura visualización de los datos y elaboración de reportes e indicadores de negocio.
3. Estructura del repositorio

El repositorio se organiza en tres módulos que representan las distintas etapas de desarrollo del proyecto:

Módulo	Archivo	Descripción
Módulo 3	Ventas_Tech_DB	Contiene los scripts SQL para la creación de las tablas y la carga de datos en la base de datos.
Módulo 4	m4_consultas_negocio	Contiene consultas SQL destinadas a explorar y analizar la información comercial y el comportamiento de las ventas.
Módulo 5	m5_consultas_joins	Contiene consultas SQL que utilizan INNER JOIN, LEFT JOIN y UNION ALL para integrar y analizar información de ventas, clientes y productos.
4. Requisitos para ejecutar el proyecto

Para trabajar con los scripts SQL de este repositorio se requiere:

Tener instalado PostgreSQL 18.
Contar con pgAdmin para administrar la base de datos y ejecutar las consultas.
Disponer de acceso a una instancia de PostgreSQL.
Contar con los permisos necesarios para crear bases de datos, tablas y ejecutar consultas SQL.
5. Instrucciones para ejecutar el proyecto

Para reproducir el desarrollo y ejecutar las consultas, se recomienda seguir el siguiente orden:

Paso 1. Obtener los archivos SQL

Verificar que se encuentren disponibles los archivos SQL correspondientes a los módulos desarrollados.

Paso 2. Preparar el entorno de trabajo

Abrir pgAdmin y conectarse a la instancia de PostgreSQL 18.

Crear o seleccionar una base de datos destinada al proyecto RetailPro.

Paso 3. Crear las tablas y cargar los datos – Módulo 3

Abrir el archivo SQL correspondiente al Módulo 3 – Ventas_Tech_DB desde el entorno de consultas de pgAdmin.

Ejecutar el script para crear la estructura de las tablas y cargar los datos correspondientes.

Una vez finalizada la ejecución, verificar que las tablas se hayan creado correctamente y que los registros estén disponibles para su consulta.

Paso 4. Ejecutar las consultas de análisis de negocio – Módulo 4

Abrir el archivo correspondiente al Módulo 4 – m4_consultas_negocio.

Ejecutar las consultas SQL incluidas en el archivo para explorar la información comercial y analizar el comportamiento de las ventas.

Este módulo permite trabajar sobre los datos previamente cargados y obtener información relevante para el análisis del negocio.

Paso 5. Ejecutar las consultas de integración de datos – Módulo 5

Abrir el archivo correspondiente al Módulo 5 – m5_consultas_joins.

Ejecutar las consultas en el siguiente orden:

Consulta 1 – INNER JOIN: integra la información de ventas con los datos descriptivos de clientes y productos.
Consulta 2 – LEFT JOIN: permite identificar clientes registrados que no realizaron compras.
Consulta 3 – LEFT JOIN: permite identificar productos del catálogo que no registran ventas.
Consulta 4 – UNION ALL: consolida y permite comparar resultados de ventas según el período definido en la consulta.

Estas consultas permiten relacionar distintas entidades del modelo de datos y ampliar las posibilidades de análisis comercial.

Paso 6. Verificar los resultados

Una vez ejecutadas las consultas, revisar los resultados obtenidos en pgAdmin.

Comprobar que las consultas se hayan ejecutado correctamente y analizar la información generada desde una perspectiva de negocio.

Los resultados constituyen una base para continuar con el proceso de análisis y preparar los datos para su posterior visualización en Power BI.

6. Descripción de los módulos desarrollados
Módulo 3 – Creación de base de datos y carga de información

Archivo: Ventas_Tech_DB

Este módulo comprende la etapa inicial de preparación de los datos.

Incluye los scripts SQL necesarios para crear las tablas y realizar la carga de datos, estableciendo la estructura de información sobre la cual se desarrollan los análisis posteriores.

Su propósito es disponer de una base de datos organizada y preparada para ejecutar las consultas de negocio.

Módulo 4 – Consultas de análisis de negocio

Archivo: m4_consultas_negocio

Este módulo está orientado a la exploración y análisis de la información comercial mediante consultas SQL.

Permite trabajar con los datos de ventas y obtener información útil para comprender el comportamiento del negocio.

Constituye una etapa de análisis previa a la integración de información y a la futura construcción de visualizaciones.

Módulo 5 – Consultas de integración de datos

Archivo: m5_consultas_joins

Este módulo profundiza el análisis mediante la integración de información de distintas entidades utilizando diferentes operadores SQL.

Se desarrollan consultas con:

INNER JOIN: para relacionar registros coincidentes entre las tablas de ventas, clientes y productos.
LEFT JOIN: para identificar registros sin correspondencia en las relaciones analizadas, como clientes sin compras y productos sin ventas.
UNION ALL: para consolidar resultados de consultas con estructuras compatibles y comparar información de ventas según el período definido.

Estas operaciones permiten ampliar el análisis comercial y obtener una visión más integrada de la información disponible.

7. Proyección del proyecto

Los datos preparados y analizados mediante PostgreSQL constituyen la base para una futura etapa de visualización en Power BI.

Esta integración permitirá avanzar hacia la elaboración de reportes e indicadores que faciliten la interpretación de la información comercial y el seguimiento del comportamiento de las ventas, los clientes, los productos y las categorías.

8. Consideraciones finales

El proyecto RetailPro documenta un proceso de análisis de datos utilizando SQL, desde la creación y carga de una base de datos hasta la exploración e integración de información comercial.

Los módulos desarrollados permiten aplicar distintos conceptos de SQL en un contexto de negocio y establecer una base de trabajo para continuar profundizando el análisis y avanzar hacia herramientas de visualización de datos.
