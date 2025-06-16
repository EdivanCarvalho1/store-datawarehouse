USE store_datawarehouse;
-- =============================================================================
-- SCRIPT: CRIAÇÃO DOS ESQUEMAS PARA O DATA WAREHOUSE
-- ARQUITETURA: Medallion
-- AUTOR: Edivan Carvalho
-- DATA: 16/06/2025
-- =============================================================================

/*
   Camada de Bronze: Armazena dados brutos, sem transformação.
*/
CREATE SCHEMA IF NOT EXISTS bronze
/*
   Camada de Silver: Contém dados limpos e transformados, prontos para análise.
*/
CREATE SCHEMA IF NOT EXISTS silver
/*
    Camada de Gold: Dados altamente refinados, prontos para relatórios e dashboards.
*/
CREATE SCHEMA IF NOT EXISTS gold