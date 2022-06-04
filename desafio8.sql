SELECT nome_artista AS artista, name_album AS album FROM SpotifyClone.Artistas
INNER JOIN SpotifyClone.Albums
ON id_interprete = id_artista
HAVING artista = 'Walter Phoenix';