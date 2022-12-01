SELECT 
	u.nome AS usuario,
	IF((YEAR(h.data_reproducao)  > 2020), 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuarios AS u
LEFT JOIN SpotifyClone.historico_reproducoes AS h
ON h.usuario_id = u.usuario_id AND YEAR(h.data_reproducao)  > 2020
ORDER BY u.nome;