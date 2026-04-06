-- models/marts/facts/fct_desempenho_carteira.sql
select
    t.id_tempo,
    i.id_investidor,
    c.id_carteira,
    a.id_ativo,
    stg_investors.produtos as produto_escolhido,
    stg_investors.valor_investido / nullif(stg_investors.patrimonio_total,0) as retorno_acumulado,
    0 as dividendos_recebidos, -- placeholder
    (stg_investors.valor_investido - stg_investors.renda_mensal)::numeric / nullif(stg_investors.renda_mensal,0) as variacao_percentual,
    stg_investors.valor_investido as valor_atual_carteira
from {{ ref('stg_investors') }} stg_investors
join {{ ref('dim_investidor') }} i on stg_investors.investor_id = i.id_investidor
join {{ ref('dim_carteira') }} c on stg_investors.investor_id = c.id_carteira
join {{ ref('dim_ativo') }} a on a.codigo_ativo = 'PETR4' -- exemplo
join {{ ref('dim_tempo') }} t on t.data = current_date -- exemplo