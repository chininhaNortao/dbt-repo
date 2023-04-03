{{ config(materialized='table') }}

with
    base as (

        select
            date,
            _fivetran_synced,
            device_category,
            platform,
            engaged_sessions,
            new_users,
            total_users
        from {{ ref("stg_ga__platform_device") }}

    )

select *
from base