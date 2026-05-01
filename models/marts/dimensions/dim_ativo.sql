-- models/marts/dimensions/dim_ativo.sql

{{ config(
    materialized='table'
) }}

select
    ticker as id_ativo,
    ticker as codigo_ativo,
    'Ação' as tipo_ativo,
    null as setor,
    'BRL' as moeda
from {{ ref('stg_market_ticks') }}
