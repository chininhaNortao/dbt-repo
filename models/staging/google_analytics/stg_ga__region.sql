with base as (

    select * 
    from {{ source('google_analytics_4','ga_4_dm_region') }}

),

final as (
    
    select
        date,
        region,
        _fivetran_synced as last_time_synced,
        engaged_sessions,
        event_count,
        new_users,
        total_users
    from base

)

select * from final