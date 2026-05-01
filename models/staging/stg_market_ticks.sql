-- models/staging/stg_market_ticks.sql

{{ config(
    materialized='view'
) }}

select
    date::date as data,
    open::numeric as preco_abertura,
    high::numeric as preco_maximo,
    low::numeric as preco_minimo,
    close::numeric as preco_fechamento,
    volume::bigint as volume,
    ticker,
    adj_close::numeric as preco_ajustado
from bronze.market_ticks
