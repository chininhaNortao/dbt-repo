with
    l as (
        select
            *
        from {{ ref("int_gs__rename_values_lead") }}
    ),

o as (
        select
            *
        from {{ ref('int_gs__rename_values_oportunidade') }}

    )

select 
    l.origem,
    l.resposta,
    case
        when o.oportunities is null then 'Rejection'
        else o.oportunities
    end as oportunities,
    case
        when o.fechou is null then '...'
        else o.fechou
    end as fechou
from l
left join o
on l.id = o.id_lead