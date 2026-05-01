-- models/staging/stg_investors.sql

{{ config(
    materialized='view'
) }}

select
    investor_id,
    idade,
    estado_civil,
    dependentes,
    profissao,
    renda_tipo,
    renda_mensal,
    patrimonio_total,
    valor_investido,
    dividas,
    percentual_despesas,
    reserva_emergencia,
    tempo_invest,
    produtos,
    conhecimento,
    reacao_5,
    reacao_20,
    importancia,
    objetivo_principal,
    prazo_utilizacao,
    aportes_frequentes,
    horizonte,
    liquidez,
    exterior,
    tipo_invest,
    oscilacoes,
    restricoes_eticas,
    tributaria,
    perfil,
    preferencia_risco
from bronze.investors_profiles

