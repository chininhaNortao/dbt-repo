with
    base as (

        select
            date,
            session_source,
            event_count,
            engaged_sessions,
            conversions,
            sessions,
            total_users,
            user_engagement_duration
        from {{ ref("int_ga4__users_info") }}

    )

select *
from base