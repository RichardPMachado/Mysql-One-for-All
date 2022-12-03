SELECT
    ar.nome AS artista,
    a.titulo_album AS album,
    COUNT(ar.artista_id) AS seguidores
FROM SpotifyClone.albuns AS a 
LEFT JOIN SpotifyClone.artistas AS ar
ON ar.artista_id = a.artista_id
LEFT JOIN SpotifyClone.seguidor_dos_artistas AS s
ON ar.artista_id = s.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC;