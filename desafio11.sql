SELECT
    nome_musica,
    CASE
        WHEN nome_musica LIKE '%Streets' THEN REPLACE(nome_musica, 'Streets', 'Code Review')
        WHEN nome_musica LIKE '%Her Own' THEN REPLACE(nome_musica, 'Her Own', 'Trybe')
        WHEN nome_musica LIKE '%Inner Fire' THEN REPLACE(nome_musica, 'Inner Fire', 'Project')
        WHEN nome_musica LIKE '%Silly' THEN REPLACE(nome_musica, 'Silly', 'Nice')
        WHEN nome_musica LIKE '%Circus' THEN REPLACE(nome_musica, 'Circus', 'Pull Request')
    END AS novo_nome
FROM SpotifyClone.Musicas 
WHERE id_musica IN(3, 15, 6, 4, 18)
ORDER BY nome_musica;