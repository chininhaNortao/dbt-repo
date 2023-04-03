with base as (

    select * 
    from {{ source('google_analytics_4','ga_4_dm_city') }}

),

final as (
    
    select 	
        date,
        _fivetran_synced as date_last_synced,
        city,
        conversions,
        engaged_sessions,
        engagement_rate,
        event_count,
        new_users,
        total_revenue,
        total_users
    from base

)

select * from final