with base as (

    select * 
    from {{ source('google_analytics_4','ga_4_eng_events') }}

),

final as (
    
    select
        date,
        _fivetran_synced,
        event_count,
        event_count_per_user,
        event_name,
        total_revenue,
        total_users
    from base

)

select * from final