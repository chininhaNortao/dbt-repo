with base as (

    select * 
    from {{ source('google_analytics_4','ga_4_us_user_source_medium') }}

),

final as (
    
    select
        date,
        _fivetran_synced,
        conversions,
        engaged_sessions,
        engagement_rate,
        event_count,
        first_user_medium,
        first_user_source,
        new_users,
        total_revenue,
        total_users,
        user_engagement_duration
    from base

)

select * from final