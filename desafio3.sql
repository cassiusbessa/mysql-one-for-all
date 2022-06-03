SELECT nome_usuario AS usuario, COUNT(id_usuario_historico) AS qtde_musicas_ouvidas,
ROUND(SUM(duracao_musica) /60, 2) as total_minutos 
FROM SpotifyClone.Usuario
INNER JOIN SpotifyClone.Historico
ON id_usuario = id_usuario_historico
INNER JOIN SpotifyClone.Musicas
ON id_musica = id_musica_historico
GROUP BY usuario
ORDER BY usuario;