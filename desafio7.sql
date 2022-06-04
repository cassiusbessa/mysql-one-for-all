SELECT nome_artista AS artista, name_album AS album, COUNT(Artistas_id_artista) AS seguidores FROM SpotifyClone.Artistas
INNER JOIN SpotifyClone.Albums
ON id_interprete = id_artista
INNER JOIN SpotifyClone.Seguindo
ON Artistas_id_artista = id_artista
GROUP BY artista, id_album
ORDER BY seguidores DESC, artista, album;	