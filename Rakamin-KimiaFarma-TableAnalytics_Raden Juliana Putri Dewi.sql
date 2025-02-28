CREATE OR REPLACE TABLE `Kimia_Farma.KF_Tabel Analisa_Raden Juliana Putri Dewi` AS
SELECT
    t.transaction_id AS Transactions,
    t.date AS Date,
    t.customer_name AS Customer_Name,
    c.branch_id AS Branch_ID,
    c.branch_name AS Branch_Type, 
    c.kota AS City, 
    c.provinsi AS Province,
    c.rating AS rating_cabang,
    p.product_id AS Product_ID, 
    p.product_name AS Product_Name, 
    p.price AS Revenue, 
    t.discount_percentage,
    
    -- Persentase Gross Laba Berdasarkan Harga
    CASE 
        WHEN p.price <= 50000 THEN 0.10
        WHEN p.price > 50000 AND p.price <= 100000 THEN 0.15
        WHEN p.price > 100000 AND p.price <= 300000 THEN 0.20
        WHEN p.price > 300000 AND p.price <= 500000 THEN 0.25
        ELSE 0.30
    END AS persentase_gross_laba,

    -- Harga setelah diskon (nett_sales)
    p.price * (1 - t.discount_percentage) AS Nett_Sales,

    -- Keuntungan bersih yang diperoleh Kimia Farma (nett_profit)
    (p.price * (1 - t.discount_percentage)) * 
    CASE 
        WHEN p.price <= 50000 THEN 0.10
        WHEN p.price > 50000 AND p.price <= 100000 THEN 0.15
        WHEN p.price > 100000 AND p.price <= 300000 THEN 0.20
        WHEN p.price > 300000 AND p.price <= 500000 THEN 0.25
        ELSE 0.30
    END AS Nett_Profit,

    t.rating AS rating_transaksi

FROM `Kimia_Farma.kf_final_transactions` AS t
LEFT JOIN `Kimia_Farma.kf_kantor_cabang` AS c ON t.branch_id = c.branch_id
LEFT JOIN `Kimia_Farma.kf_product` AS p ON t.product_id = p.product_id;
