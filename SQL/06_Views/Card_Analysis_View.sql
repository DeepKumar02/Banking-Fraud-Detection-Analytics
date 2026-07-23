CREATE VIEW vw_Card_Analysis AS
SELECT
    c.CardBrand,
    c.CardType,
    c.HasChip,
    c.CardOnDarkWeb,
    COUNT(*) AS TotalCards,
    AVG(c.CreditLimit) AS AverageCreditLimit
FROM dim_cards c
GROUP BY
    c.CardBrand,
    c.CardType,
    c.HasChip,
    c.CardOnDarkWeb;