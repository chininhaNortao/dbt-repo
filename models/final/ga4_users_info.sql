with
    base as (

        select
            date,
            first_user_medium,
            first_user_source,
            engaged_sessions,
            engagement_rate,
            new_users,
            total_revenue,
            total_users,
            user_engagement_duration
        from {{ ref("stg_ga__user_source_medium") }}

    )

select *
from base