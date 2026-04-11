--------------------SUPPLY CHAIN AND LOGISTICS-----------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------


-- ── Query 1: Total Orders by Market ──────────────────────

SELECT Market, COUNT(Order_Id) AS Total_Orders
FROM DataCoSupplyChainDataset
GROUP BY Market
ORDER BY Total_Orders DESC


-- ── Query 2: Revenue by Market ───────────────────────────

SELECT Market, ROUND(SUM(Sales_per_customer), 2) AS Total_Revenue
FROM DataCoSupplyChainDataset
GROUP BY Market
ORDER BY Total_Revenue DESC

-- ── Query 3: Late Delivery Risk by Shipping Mode ─────────

SELECT Shipping_Mode,
       COUNT(*) AS Total_Orders,
       SUM(CAST(Late_delivery_risk AS INT)) AS Late_Orders,
       ROUND(AVG(CAST(Late_delivery_risk AS FLOAT))*100, 2) 
       AS Late_Delivery_Pct
FROM DataCoSupplyChainDataset
GROUP BY Shipping_Mode
ORDER BY Late_Delivery_Pct DESC


-- ── Query 4: Top 10 Categories by Revenue ────────────────

SELECT TOP 10 Category_Name,
       ROUND(SUM(Sales_per_customer), 2) AS Total_Revenue
FROM DataCoSupplyChainDataset
GROUP BY Category_Name
ORDER BY Total_Revenue DESC


-- ── Query 5: Order Status Summary ────────────────────────

SELECT Order_Status,
       COUNT(*) AS Total_Orders
FROM DataCoSupplyChainDataset
GROUP BY Order_Status
ORDER BY Total_Orders DESC
