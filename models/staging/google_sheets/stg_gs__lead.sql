with base as (

    select * 
    from {{ source('google_sheets','recruit_lead') }}

),

final as (
    
    select
        id,
        data_envio,
        achei_no as origem,
        empresa,
        vaga,
        respondeu_ as resposta,
        virou_oportunidade_ as oportunidade,
        fechou
    from
        base
    where
        data_envio is not null

)

select * from final