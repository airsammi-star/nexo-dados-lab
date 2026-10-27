WITH partidas AS (
  SELECT
    SAFE_CAST(ano_campeonato AS INT64) AS temporada,
    gols_mandante,
    gols_visitante
  FROM `basedosdados.mundo_transfermarkt_competicoes.brasileirao_serie_a`
  WHERE gols_mandante IS NOT NULL
    AND gols_visitante IS NOT NULL
),
partidas_validas AS (
  SELECT
    temporada,
    gols_mandante,
    gols_visitante
  FROM partidas
  WHERE temporada IS NOT NULL
)
SELECT
  IF(
    GROUPING(temporada) = 1,
    'Todas as temporadas',
    CAST(temporada AS STRING)
  ) AS temporada,
  COUNT(*) AS jogos_validos,
  COUNTIF(gols_mandante > gols_visitante) AS vitorias_mandante,
  COUNTIF(gols_mandante = gols_visitante) AS empates,
  COUNTIF(gols_mandante < gols_visitante) AS vitorias_visitante,
  ROUND(
    100 * SAFE_DIVIDE(COUNTIF(gols_mandante > gols_visitante), COUNT(*)),
    2
  ) AS taxa_vitoria_mandante_pct,
  ROUND(
    100 * SAFE_DIVIDE(COUNTIF(gols_mandante < gols_visitante), COUNT(*)),
    2
  ) AS taxa_vitoria_visitante_pct,
  ROUND(
    100 * SAFE_DIVIDE(
      COUNTIF(gols_mandante > gols_visitante) - COUNTIF(gols_mandante < gols_visitante),
      COUNT(*)
    ),
    2
  ) AS diferenca_vitorias_mandante_visitante_pp,
  ROUND(AVG(gols_mandante), 2) AS gols_mandante_por_jogo,
  ROUND(AVG(gols_visitante), 2) AS gols_visitante_por_jogo,
  ROUND(
    SAFE_DIVIDE(
      3 * COUNTIF(gols_mandante > gols_visitante) + COUNTIF(gols_mandante = gols_visitante),
      COUNT(*)
    ),
    3
  ) AS pontos_mandante_por_jogo,
  ROUND(
    SAFE_DIVIDE(
      3 * COUNTIF(gols_mandante < gols_visitante) + COUNTIF(gols_mandante = gols_visitante),
      COUNT(*)
    ),
    3
  ) AS pontos_visitante_por_jogo
FROM partidas_validas
GROUP BY GROUPING SETS ((temporada), ())
ORDER BY GROUPING(temporada), temporada
