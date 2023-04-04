{{ config(materialized='table') }}

with
    base as (

        select
            *
        from {{ ref("stg_ga__region") }}

    )

select *
from base