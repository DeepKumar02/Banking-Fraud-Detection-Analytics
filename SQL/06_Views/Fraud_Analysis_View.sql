CREATE VIEW vw_Fraud_Analysis AS
SELECT
    Year,
    [Merchant State] AS MerchantState,
    [Merchant Name] AS MerchantName,
    [Use Chip] AS UseChip,
    COUNT(*) AS FraudTransactions,
    SUM(Amount) AS FraudAmount
FROM fact_transactions
WHERE [Is Fraud?] = 'Yes'
GROUP BY
    Year,
    [Merchant State],
    [Merchant Name],
    [Use Chip];