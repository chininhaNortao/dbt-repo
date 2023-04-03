with base as (

    select * 
    from {{ source('google_analytics_4','ga_4_tr_session_source_medium') }}

),

final as (
    
    select
        date,
        _fivetran_synced,
        session_medium,
        session_source,
        event_count,
        engaged_sessions,
        engagement_rate,
        conversions,
        sessions,
        total_users,
        user_engagement_duration
    from base

)

select * from final