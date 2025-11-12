SELECT
    CONCAT(i, ') ', [Name], '. ', quantity)
FROM (
    SELECT
        p.[Name],
        COUNT(1) as quantity,
        DENSE_RANK() OVER (ORDER BY p.[Name]) AS i
    FROM dbo.Basket b JOIN dbo.Product p ON b.ProductId = p.Id
    GROUP BY p.[Name]
) x