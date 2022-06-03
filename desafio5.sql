SELECT  nome_musica AS cancao, COUNT(id_musica_historico) AS reproducoes FROM SpotifyClone.Musicas
INNER JOIN SpotifyClone.Historico
ON id_musica_historico = id_musica
GROUP BY id_musica
ORDER BY reproducoes DESC, cancao LIMIT 2;