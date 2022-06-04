SELECT nome_musica AS nome, 
COUNT(id_assinatura) AS reproducoes 
FROM SpotifyClone.Historico
INNER JOIN SpotifyClone.Musicas
ON id_musica_historico = id_musica
INNER JOIN SpotifyClone.Usuario
ON id_usuario_historico = id_usuario
WHERE id_assinatura = 1 OR id_assinatura = 3
GROUP BY nome
ORDER BY nome;