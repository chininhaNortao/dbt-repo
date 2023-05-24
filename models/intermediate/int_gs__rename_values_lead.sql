with
    base as (

        select
            id,
            data_envio,
            case
                when origem like '%RECEBI%' then 'Message Received'
                else 'Message Sent'
            end as origem,
            empresa,
            vaga,
            case
                when resposta is true then 'Responded'
                else 'Ghosts'
            end as resposta,
        from {{ ref("stg_gs__lead") }}

    )

select *
from base