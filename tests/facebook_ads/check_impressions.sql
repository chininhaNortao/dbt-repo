with
    fb as (

        select *
        from {{ ref("stg_fb__custom_facebook") }}

    )

select 
    date,
    sum(impressions) as impressions
from
    fb
group by 1
having not(impressions >= 0)