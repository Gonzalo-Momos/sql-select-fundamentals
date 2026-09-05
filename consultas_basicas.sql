-- Consulta 1 — Exploración general
-- Usamos SELECT * para explorar rápidamente la estructura completa de la tabla,
-- útil en desarrollo o análisis exploratorio. NO se recomienda en producción
-- porque trae columnas innecesarias, afecta el rendimiento y puede romper
-- código si la tabla cambia de estructura.
SELECT *
FROM sales;

-- Consulta 2 — Selección específica
-- El equipo de finanzas solo necesita cliente, producto y monto.
SELECT customer_id, product_id, total_amount
FROM sales;

-- Consulta 3 — Nombres amigables con alias
-- Renombramos las columnas técnicas a nombres en español para finanzas.
SELECT 
    order_date AS fecha_pedido,
    product_name AS nombre_producto,
    quantity AS cantidad_unidades
FROM sales;
