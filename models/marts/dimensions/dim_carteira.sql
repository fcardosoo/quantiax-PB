-- models/marts/dimensions/dim_carteira.sql
select
    investor_id as id_carteira,
    tipo_invest as nome_estrategia,
    objetivo_principal as descricao,
    horizonte as objetivo
from {{ ref('stg_investidor') }}
