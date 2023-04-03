{{ config(materialized='table') }}

with
    base as (

        select
            *
        from {{ ref("stg_ga__city") }}

    )

select *
from base