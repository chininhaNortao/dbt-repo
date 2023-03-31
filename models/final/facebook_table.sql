{{ config(materialized='table') }}

with
    renamed as (

        select
            date,
            datetime_last_sync,
            campaign_name,
            adset_name,
            ad_name,
            clicks,
            inline_link_clicks,
            impressions,
            spend
        from {{ ref("stg_fb__custom_facebook") }}

    )

select *
from renamed
