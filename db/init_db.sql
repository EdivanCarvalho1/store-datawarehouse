-- =============================================================================
-- SCRIPT: CRIAÇÃO DO DATA WAREHOUSE 'store_datawarehouse'
-- ARQUITETURA: Medallion
-- AUTOR: Edivan Carvalho
-- DATA: 16/06/2025
-- =============================================================================
--
-- OBJETIVO:
-- Este script realiza a criação limpa do banco de dados para o Data Warehouse.
-- Ele é projetado para ser usado em ambientes de DESENVOLVIMENTO.
--
-- ATENÇÃO:
-- O COMANDO 'DROP DATABASE' É DESTRUTIVO E IRREVERSÍVEL. ELE APAGARÁ
-- PERMANENTEMENTE O BANCO DE DADOS E TODOS OS SEUS DADOS.
-- NÃO EXECUTE EM PRODUÇÃO SEM UM PLANO DE BACKUP E CERTEZA ABSOLUTA.
-- =============================================================================

/******************************************************************************
 * PASSO 1: DERRUBAR O BANCO DE DADOS EXISTENTE
 ******************************************************************************
 *
 * Utilizamos a cláusula 'WITH (FORCE)' (disponível no PostgreSQL 13+)
 * para encerrar todas as conexões ativas com o banco de dados antes de
 * derrubá-lo. Isso evita erros comuns em scripts de automação.
 *
 * É necessário estar conectado a outro banco (ex: 'postgres') para executar.
 *
 ******************************************************************************/
 
DROP DATABASE IF EXISTS store_datawarehouse WITH (FORCE);

/******************************************************************************
 * PASSO 2: CRIAR O NOVO BANCO DE DADOS
 ******************************************************************************
 *
 * Criamos o banco de dados com configurações recomendadas para garantir
 * consistência, como definir o proprietário (OWNER) e a codificação (ENCODING).
 *
 ******************************************************************************/
CREATE DATABASE store_datawarehouse
	WITH
	OWNER = postgres -- Ou qualquer outro usuário específico
	ENCODING = 'UTF-8'
	LC_COLLATE = 'pt_BR.UTF-8'
    LC_CTYPE = 'pt_BR.UTF-8'
    TEMPLATE = template0;
