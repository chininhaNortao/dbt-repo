with
    origem_resposta as (
        SELECT 
            origem as source,
            resposta as target,
            count(origem) as value
        FROM {{ ref('int_gs__creating_recruitment_table') }}
        GROUP BY
            1,2
    ),

resposta_oportunities as (
    SELECT 
        resposta as source,
        oportunities as target,
        count(resposta) as value
    FROM {{ ref('int_gs__creating_recruitment_table') }}
    GROUP BY
        1,2
),

oportunities_fechou as (

    SELECT 
        oportunities as source,
        fechou as target,
        count(oportunities) as value
    FROM {{ ref('int_gs__creating_recruitment_table') }}
    GROUP BY
        1,2

)

    
SELECT 
    *
FROM origem_resposta
UNION ALL
SELECT 
    *
FROM resposta_oportunities
UNION ALL
SELECT 
    *
FROM oportunities_fechou
WHERE
    target not like '%...%'
