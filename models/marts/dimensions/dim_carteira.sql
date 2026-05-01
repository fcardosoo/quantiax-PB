-- models/marts/dimensions/dim_carteira.sql

{{ config(
    materialized='table'
) }}

select
    investor_id as id_carteira,
    tipo_invest as nome_estrategia,
    objetivo_principal as descricao,
    horizonte as objetivo
from {{ ref('stg_investidor') }}
