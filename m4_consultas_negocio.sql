--Motor utilizado: PostgreSQL 18
-- =========================================
-- CONSULTA 1: RESUMEN EJECUTIVO MENSUAL
-- =========================================

SELECT
    EXTRACT(MONTH FROM fecha_venta) AS mes,
    SUM(cantidad * precio_unitario) AS total_facturado,
    COUNT(*) AS cantidad_pedidos,
    AVG(cantidad * precio_unitario) AS ticket_promedio
FROM ventas
GROUP BY EXTRACT(MONTH FROM fecha_venta)
ORDER BY mes;

-- =========================================
-- CONSULTA 2: RANKING DE PRODUCTOS
-- =========================================

SELECT
    id_producto,
    SUM(cantidad) AS unidades_vendidas,
    SUM(cantidad * precio_unitario) AS total_facturado
FROM ventas
GROUP BY id_producto
ORDER BY total_facturado DESC
LIMIT 5;

-- =========================================
-- CONSULTA 3: CLIENTES RECURRENTES
-- =========================================

SELECT
    id_cliente,
    COUNT(*) AS cantidad_pedidos,
    SUM(cantidad * precio_unitario) AS total_gastado
FROM ventas
GROUP BY id_cliente
HAVING COUNT(*) > 1
ORDER BY cantidad_pedidos DESC;

-- =========================================
-- CONSULTA 4: COMPARACION CON EL PROMEDIO MENSUAL
-- =========================================

WITH facturacion_mensual AS (
    SELECT
        EXTRACT(MONTH FROM fecha_venta) AS mes,
        SUM(cantidad * precio_unitario) AS total_facturado
    FROM ventas
    GROUP BY EXTRACT(MONTH FROM fecha_venta)
),
promedio_mensual AS (
    SELECT
        AVG(total_facturado) AS promedio_general
    FROM facturacion_mensual
)
SELECT
    mes,
    total_facturado,
    (SELECT promedio_general FROM promedio_mensual) AS promedio_general,
    CASE
        WHEN total_facturado > (SELECT promedio_general FROM promedio_mensual)
            THEN 'Por encima'
        WHEN total_facturado < (SELECT promedio_general FROM promedio_mensual)
            THEN 'Por debajo'
        ELSE 'Igual al promedio'
    END AS comparacion_promedio
FROM facturacion_mensual
ORDER BY mes;

-- =========================================
-- HALLAZGOS DEL ANALISIS
-- =========================================

-- Hallazgo 1: El producto con ID 1 lidera la facuración con un total de $ 3.600 y 3 unidades vendidas, mientras que el producto con ID 2 registra mayor volumen de ventas (13 unidades) pero generó $ 364,00, por lo tanto vender más unidades no necesariamente significa generar una mayor facturación.

-- Hallazgo 2: Durante el mes 3(marzo), se registró una facturación total de $6.444 correspondiente a 10 pedidos, con un ticket promedio de $644,4 por pedido. Este resultado permite observar el desempeño comercial del mes y establecer una referencia para evaluar periodos siguientes. Para saber si el desempeño fue favorable sería necesario contar con datos de otros meses.

-- Hallazgo 3: El cliente con ID 1 presenta el mayor gasto total de $2.640, siendo el que más ingresos aporta entre los clientes recurrentes analizados. Es seguido por el cliente con ID 5, con $2.100. Esta información nos permite identificar clientes valiosos para campañas de fidelización y acciones comerciales concretas.


