{{ config(materialized='table') }}

with
    base as (

        select
            date,
            _fivetran_synced,
            session_medium,
            session_source,
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