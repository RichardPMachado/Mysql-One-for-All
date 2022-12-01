SELECT
	u.nome AS usuario,
    COUNT(h.cancao_id) AS qt_de_musicas_ouvidas,
	ROUND(SUM(c.duracao_cancao / 60), 2) AS total_minutos
FROM SpotifyClone.usuarios AS u
LEFT JOIN SpotifyClone.historico_reproducoes AS h ON h.usuario_id = u.usuario_id
LEFT JOIN SpotifyClone.cancoes AS c ON c.cancao_id = h.cancao_id
GROUP BY u.nome
ORDER BY u.nome;