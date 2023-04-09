with facebook_ads as (

    SELECT 
        *
    FROM
        {{ ref('stg_fb__fivetran_audit') }}

),

google_analytics_4 as (

    SELECT
        *
    FROM
        {{ ref('stg_ga__fivetran_audit') }}

)

SELECT 
    *
FROM
    facebook_ads
UNION ALL
SELECT
    *    
FROM
    google_analytics_4