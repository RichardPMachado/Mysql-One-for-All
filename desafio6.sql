SELECT
    FORMAT(MIN(p.preco), 2) AS faturamento_minimo,
    FORMAT(MAX(p.preco), 2) AS faturamento_maximo,
    FORMAT(AVG(p.preco), 2) AS faturamento_medio,
    FORMAT(SUM(p.preco), 2) AS faturamento_total
FROM SpotifyClone.planos AS p 
INNER JOIN SpotifyClone.usuarios AS u
ON p.plano_id = u.plano_id;