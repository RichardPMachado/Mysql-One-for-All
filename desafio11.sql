SELECT 
    titulo_cancao AS nome_musica,
    CASE
        WHEN titulo_cancao LIKE '%Bard%' THEN REPLACE(titulo_cancao, 'Bard', 'QA')
        WHEN titulo_cancao LIKE '%Amar%' THEN REPLACE(titulo_cancao, 'Amar', 'Code Review')
        WHEN titulo_cancao LIKE '%Pais%' THEN REPLACE(titulo_cancao, 'Pais', 'Pull Requests')
        WHEN titulo_cancao LIKE '%SOUL%' THEN REPLACE(titulo_cancao, 'SOUL', 'CODE')
        WHEN titulo_cancao LIKE '%SUPERSTAR%' THEN REPLACE(titulo_cancao, 'SUPERSTAR', 'SUPERDEV')
    END AS novo_nome
FROM SpotifyClone.cancoes
HAVING novo_nome IS NOT NULL
ORDER BY titulo_cancao DESC;