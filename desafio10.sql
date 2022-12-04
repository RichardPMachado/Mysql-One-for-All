SELECT 
	DISTINCT c.titulo_cancao AS nome,
    COUNT(nome) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.planos AS p
ON  p.plano IN('gratuito', 'pessoal')
INNER JOIN SpotifyClone.usuarios AS u
ON u.plano_id = p.plano_id
INNER JOIN SpotifyClone.historico_reproducoes AS h
ON u.usuario_id = h.usuario_id
WHERE c.cancao_id = h.cancao_id
group by c.titulo_cancao
ORDER BY nome;