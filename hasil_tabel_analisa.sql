-- Melihat 100 baris transaksi terbaru
SELECT *
FROM `rakamin-kf-analytics-475808.kimia_farma.tabel_analisa`
ORDER BY date DESC
LIMIT 100;