-- models/marts/dimensions/dim_investidor.sql

{{ config(
    materialized='table'
) }}

select
    investor_id as id_investidor,
    profissao as nome,
    perfil as tipo,
    preferencia_risco as perfil_risco,
    investor_id as id_localizacao
from {{ ref('stg_investidor') }}
