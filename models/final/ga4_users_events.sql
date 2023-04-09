with
    table_pivot as (
        select *
        from
            (
                select 
                    date,
                    event_name,
                    sum(total_users) as total_users
                from
                    {{ ref("stg_ga__events") }}
                group by
                    date,
                    event_name
            ) pivot (
                sum(total_users)
                for event_name in (
                    "page_view",
                    "scroll",
                    "user_engagement",
                    "first_visit",
                    "session_start",
                    "click"
                )
            )
    )


select *
from table_pivot