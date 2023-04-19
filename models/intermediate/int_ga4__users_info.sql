with
    base as (

        select
            date,
            case
                when session_source like '%facebook%' then 'facebook'
                else session_source
            end as session_source,
            event_count,
            engaged_sessions,
            conversions,
            sessions,
            total_users,
            user_engagement_duration
        from {{ ref("stg_ga__session_source_medium") }}

    )

select *
from base