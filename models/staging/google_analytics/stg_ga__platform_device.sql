with base as (

    select * 
    from {{ source('google_analytics_4','ga_4_tec_platform_device') }}

),

final as (
    
    select
        date,
        _fivetran_synced,
        conversions,
        device_category,
        platform,
        engaged_sessions,
        engagement_rate,
        event_count,
        new_users,
        total_users
    from base

)

select * from final