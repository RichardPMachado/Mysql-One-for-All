SELECT
	c.titulo_cancao AS cancao,
    COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.historico_reproducoes AS h
LEFT JOIN SpotifyClone.cancoes AS c ON h.cancao_id = c.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;