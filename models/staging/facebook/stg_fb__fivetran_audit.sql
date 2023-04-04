with base as (

    select * 
    from {{ source('facebook_ads','fivetran_audit') }}

),

final as (
    
    select
        max(done) as last_time_synced,
        schema as source_schema
    from base
    group by schema
)

select * from final