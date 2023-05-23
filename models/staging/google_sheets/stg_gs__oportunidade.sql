with base as (

    select * 
    from {{ source('google_sheets','recruit_opportunities') }}

),

final as (
    
    select
        id_lead,
        data_conversa,
        data_1_entrevista,
        data_2_entrevista,
        vaga,
        empresa,
        fechou
    from
        base
    where
        data_1_entrevista is not null

)

select * from final