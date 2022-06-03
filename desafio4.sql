SELECT nome_usuario AS usuario, 
IF(YEAR(MAX(horario_reproducao)) = '2021', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
-- MAX(horario_reproducao) AS condicao_usuario
FROM SpotifyClone.Usuario
INNER JOIN SpotifyClone.Historico
ON id_usuario = id_usuario_historico
GROUP BY usuario
ORDER BY usuario;
