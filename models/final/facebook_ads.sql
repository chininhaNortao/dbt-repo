{{ config(materialized='table') }}

with
    renamed as (

        select
            date,
            datetime_last_sync,
            campaign_name,
            adset_name,
            ad_name,
            spend,
            impressions,
            clicks,
            inline_link_clicks as link_clicks
        from {{ ref("stg_fb__custom_facebook") }}

    )

select *
from renamed
