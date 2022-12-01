SELECT
	COUNT(distinct c.cancao_id) AS cancoes,
	COUNT(distinct ar.artista_id) AS artistas,
	COUNT(distinct al.album_id) AS albuns
FROM SpotifyClone.cancoes AS c
JOIN SpotifyClone.artistas AS ar
JOIN SpotifyClone.albuns AS al;