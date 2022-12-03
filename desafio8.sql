SELECT
    ar.nome AS artista,
    a.titulo_album AS album
FROM SpotifyClone.albuns AS a
INNER JOIN SpotifyClone.artistas AS ar
ON ar.artista_id = a.artista_id AND ar.nome = 'Elis Regina';