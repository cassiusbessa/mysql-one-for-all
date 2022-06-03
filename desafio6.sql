SELECT CONVERT(ROUND(MIN(valor_plano), 2), CHAR) AS faturamento_minimo, CAST(ROUND(MAX(valor_plano), 2) AS CHAR) AS faturamento_maximo,
CAST(ROUND(AVG(valor_plano), 2) AS CHAR) AS faturamento_medio, CAST(ROUND(SUM(valor_plano), 2) AS CHAR) AS faturamento_total FROM SpotifyClone.Planos
INNER JOIN SpotifyClone.Usuario
ON id_plano = id_assinatura;
   