-- Motor de base de datos: PostgreSQL 18 
--===================================
-- ENTREGABLE 5: CONSULTAS CON JOINS
-- Proyecto: RetailPro
-- ===================================
-- ---------------------------------------------------------
-- Consulta 1: Vista base del proyecto (INNER JOIN)
-- Propósito: integrar ventas, clientes, productos y categorías
para generar una fuente de datos.
-- ---------------------------------------------------------

SELECT
    v.fecha_venta,
    c.id_cliente,
    c.nombre AS nombre_cliente,
    c.email,
    c.ciudad,
    p.id_producto,
    p.nombre_producto,
    cat.nombre_categoria,
    v.cantidad,
    v.precio_unitario,
    (v.cantidad * v.precio_unitario) AS total_venta
FROM ventas AS v
INNER JOIN clientes AS c
    ON v.id_cliente = c.id_cliente
INNER JOIN productos AS p
    ON v.id_producto = p.id_producto
INNER JOIN categorias AS cat
    ON p.id_categoria = cat.id_categoria
ORDER BY v.fecha_venta;

-- Hallazgo: las 10 ventas registradas corresponden a los 5 clientes y abarcan las 4 categorias de productos. El cruce permite identificar los productos adquiridos por cada cliente y analizar el comportamiento de las ventas según la ciudad y la categoría.

-- ------------------------------------------------------
-- Consulta 2: Clientes sin ventas (LEFT JOIN)
-- Propósito: detectar clientes sin compras para que CRM
pueda evaluar acciones de contacto y fidelización.
-- ------------------------------------------------------

SELECT
    c.nombre,
    c.email,
    c.fecha_registro
FROM clientes AS c
LEFT JOIN ventas AS v
    ON c.id_cliente = v.id_cliente
WHERE v.id_venta IS NULL
ORDER BY c.fecha_registro;

-- Hallazgo: con los datos actuales, no se encontraron
clientes sin compras (0 registros). Por lo tanto, CRM puede priorizar otras segmentaciones como la ciudad o la frecuencia de compra, para orientar sus acciones comerciales.

-- ---------------------------------------------------------
-- Consulta 3: Productos sin ventas (LEFT JOIN)
-- Propósito: identificar productos sin ventas, para que el área de producto evalúe el catálogo.
-- ---------------------------------------------------------

SELECT
    p.nombre_producto,
    cat.nombre_categoria,
    p.precio
FROM productos AS p
LEFT JOIN ventas AS v
    ON p.id_producto = v.id_producto
LEFT JOIN categorias AS cat
    ON p.id_categoria = cat.id_categoria
WHERE v.id_venta IS NULL
ORDER BY p.nombre_producto;

-- Hallazgo: con los datos actuales, no se encontraron productos sin ventas (0 registros). El catálogo completo tiene al menos una venta registrada por producto. Por lo tanto, CRM puede concentrar sus esfuerzos de analisis en el volumen de venta de cada producto por período, para orientar sus campañas comerciales.

-- -----------------------------------------------------
-- Consulta 4: Consolidado por canal (UNION ALL)
-- Propósito: comparar el importe total de las ventas 
de dos períodos de marzo de 2024.
-- -----------------------------------------------------

SELECT
    canal,
    SUM(total) AS total_canal
FROM (
    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Periodo 1 (05 al 10 de marzo)' AS canal
    FROM ventas
    WHERE fecha_venta >= DATE '2024-03-05'
      AND fecha_venta < DATE '2024-03-11'

    UNION ALL

    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Periodo 2 (11 al 15 de marzo)' AS canal
    FROM ventas
    WHERE fecha_venta >= DATE '2024-03-11'
      AND fecha_venta < DATE '2024-03-16'
) AS consolidado
GROUP BY canal
ORDER BY canal;

-- Hallazgo: el período del 5 al 10 de marzo totaliza $3.620,00 y el del 11 al 15 de marzo, $2.824,00. El primer período supera al segundo en $796,00. Por lo tanto, resulta conveniente investigar qué factores favorecieron esta diferencia y ampliar el analisis a otros períodos, para saber si se trata de una tendencia sostenida.