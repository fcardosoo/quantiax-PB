-- models/marts/dimensions/dim_tempo.sql
select distinct
    row_number() over(order by data) as id_tempo,
    data,
    extract(month from data) as mes,
    extract(quarter from data) as trimestre,
    extract(year from data) as ano
from {{ ref('stg_market_ticks') }}
