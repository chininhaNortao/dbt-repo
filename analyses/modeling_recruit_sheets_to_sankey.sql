SELECT 
  origem as SOURCE,
  resposta as TARGET,
  count(origem) as VALUE
FROM {{ ref('gs_recruitment') }}
group by
1,2

UNION ALL
SELECT 
  resposta as SOURCE,
  oportunities as TARGET,
  count(resposta) as VALUE
FROM {{ ref('gs_recruitment') }}
group by
1,2

UNION ALL
SELECT 
  oportunities as SOURCE,
  fechou as TARGET,
  count(oportunities) as VALUE
FROM {{ ref('gs_recruitment') }}
group by
1,2