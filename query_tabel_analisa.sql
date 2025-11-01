CREATE OR REPLACE TABLE `rakamin-kf-analytics-475808.kimia_farma.tabel_analisa` AS
SELECT
    t.transaction_id,
    t.date,
    kc.branch_id,
    kc.branch_name,
    kc.kota,
    kc.provinsi,
    kc.rating AS rating_cabang,
    t.customer_name,
    p.product_id,
    p.product_name,
    t.price AS actual_price,
    t.discount_percentage,
    -- Menghitung persentase gross laba berdasarkan harga
    CASE
        WHEN t.price <= 50000 THEN 0.10
        WHEN t.price > 50000 AND t.price <= 100000 THEN 0.15
        WHEN t.price > 100000 AND t.price <= 300000 THEN 0.20
        WHEN t.price > 300000 AND t.price <= 500000 THEN 0.25
        ELSE 0.30
    END AS persentase_gross_laba,

    -- Menghitung nett sales (harga setelah diskon)
    (t.price * (1 - t.discount_percentage)) AS nett_sales,

    -- Menghitung nett profit (keuntungan bersih)
    (t.price * (1 - t.discount_percentage)) - (t.price * (
        1 - (CASE
                WHEN t.price <= 50000 THEN 0.10
                WHEN t.price > 50000 AND t.price <= 100000 THEN 0.15
                WHEN t.price > 100000 AND t.price <= 300000 THEN 0.20
                WHEN t.price > 300000 AND t.price <= 500000 THEN 0.25
                ELSE 0.30
            END)
    )) AS nett_profit,

    t.rating AS rating_transaksi
FROM
    `rakamin-kf-analytics-475808.kimia_farma.kf_final_transaction` AS t
LEFT JOIN
    `rakamin-kf-analytics-475808.kimia_farma.kf_kantor_cabang` AS kc ON t.branch_id = kc.branch_id
LEFT JOIN
    `rakamin-kf-analytics-475808.kimia_farma.kf_product` AS p ON t.product_id = p.product_id;