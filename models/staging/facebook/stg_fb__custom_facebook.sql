with base as (

    select * 
    from {{ source('facebook_ads','custom_facebook_ads') }}

),

final as (
    
    select 	
        date,
        _fivetran_synced as datetime_last_sync,
        campaign_name,
        adset_name,
        ad_name,
        clicks,
        inline_link_clicks,
        impressions,
        spend
    from base

)

select * from final