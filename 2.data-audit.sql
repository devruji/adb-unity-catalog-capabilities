-- Databricks notebook source
select current_catalog()

-- COMMAND ----------

use catalog formula1_dev

-- COMMAND ----------

SELECT DISTINCT(grantee) AS `ACCESSIBLE BY`
FROM system.information_schema.table_privileges
WHERE table_schema = 'bronze' AND table_name = 'results'
  UNION
    SELECT table_owner
    FROM system.information_schema.tables
    WHERE table_schema = 'bronze' AND table_name = 'results'
  UNION
    SELECT DISTINCT(grantee)
    FROM system.information_schema.schema_privileges
    WHERE schema_name = 'bronze'
