-- Databricks notebook source
SELECT *
FROM `system`.information_schema.tables
WHERE table_name = 'results';

-- COMMAND ----------

-- MAGIC %md
-- MAGIC
-- MAGIC ##### The difference between this information schema here within each of the catalogs and the one on the system
-- MAGIC
-- MAGIC - system information schema gives you all object within this metastore
-- MAGIC - whereas the one within catalog only gives you the information within the catalog

-- COMMAND ----------

SELECT *
FROM `demo_catalog`.information_schema.tables
WHERE table_name = 'results';
