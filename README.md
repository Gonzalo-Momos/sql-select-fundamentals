# sql-select-fundamentals

Ejercicios básicos de consultas SELECT sobre la tabla `sales` de TechStore.

## ¿Por qué es mala práctica usar SELECT * en producción?

1. **Rendimiento**: `SELECT *` trae todas las columnas de la tabla, incluso las que no se van a usar. Si `sales` tiene columnas pesadas (como descripciones largas o campos binarios), esto aumenta el tráfico de red y el tiempo de respuesta innecesariamente. Por ejemplo, si solo necesito el monto de una venta, traer también la dirección de envío completa del cliente es un desperdicio de recursos.

2. **Mantenibilidad**: si alguien agrega o elimina una columna en la tabla `sales`, cualquier consulta con `SELECT *` cambia su resultado sin previo aviso. Esto puede romper reportes, dashboards o código de la aplicación que espera un número fijo de columnas en un orden determinado.

3. **Seguridad**: `SELECT *` puede exponer columnas sensibles (como datos internos de costos o información personal del cliente) a personas o sistemas que no deberían tener acceso a esos datos, simplemente porque nadie limitó explícitamente qué se comparte.

## ¿Por qué son importantes los alias para un stakeholder no técnico?

Un alias traduce el lenguaje técnico de la base de datos al lenguaje que entiende el negocio. Por ejemplo, la columna `total_amount` no le dice nada a alguien de finanzas a simple vista: podría confundirse con un total de unidades, un total de impuestos, etc.

Al escribir:

```sql
SELECT total_amount AS monto_total
FROM sales;
```

la persona de finanzas ve directamente **`monto_total`** en el resultado, sin necesidad de preguntarle a un desarrollador qué significa `total_amount`. El alias elimina la barrera del inglés técnico y hace que el reporte se pueda leer e interpretar de forma autónoma, sin depender de quien escribió la consulta original.


<u>**Nota:**</u> Soy principiante absoluto en programación y GitHub, me costó bastante mas de lo esperado usar esta página y no es de lo mas intuitiva, sería bueno que en algún momento se tocará como parte del curso, ya que se usa bastante por lo visto. El uso de las negritas, formato, el cargado las ubicaciones de los archivos para las entregas, etc.
Saludos.- 
