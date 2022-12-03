SELECT
    count(h.usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.usuarios AS u 
ON u.usuario_id = h.usuario_id AND u.nome = 'Barbara Liskov';