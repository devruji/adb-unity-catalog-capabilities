-- Databricks notebook source
-- MAGIC %md
-- MAGIC
-- MAGIC ### Transfer ownership
-- MAGIC
-- MAGIC [docs](https://learn.microsoft.com/en-us/azure/databricks/data-governance/unity-catalog/manage-privileges/ownership#transfer-ownership)

-- COMMAND ----------

ALTER <securable-type> <securable-name> OWNER TO <principal>;

-- COMMAND ----------

ALTER TABLE mycatalog.myschema.orders OWNER TO `accounting`;
