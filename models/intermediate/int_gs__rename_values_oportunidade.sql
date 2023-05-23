with
    base as (

        select
            id_lead,
            'Interview' as oportunities,
            data_conversa,
            data_1_entrevista,
            data_2_entrevista,
            vaga,
            empresa,
            case
                when fechou is true then empresa
                else '...'
            end as fechou
        from {{ ref("stg_gs__oportunidade") }}

    )

select *
from base