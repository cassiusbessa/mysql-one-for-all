SELECT COUNT(id_musica) as cancoes,  COUNT(distinct id_interprete) as artistas, 
COUNT(distinct id_collect) as albuns FROM SpotifyClone.Musicas;