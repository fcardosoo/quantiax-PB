-- models/marts/dimensions/dim_localizacao.sql
select distinct
    investor_id as id_localizacao,
    estado_civil as pais, -- ajustar conforme origem real
    null as estado,
    null as cidade,
    null as regiao
from {{ ref('stg_investidor') }}
