
# 📊 Analisis Kinerja Bisnis Kimia Farma (2020-2023)

Selamat datang di repository proyek Analisis Kinerja Bisnis Kimia Farma. Proyek ini merupakan studi kasus *end-to-end* yang menganalisis data transaksi historis untuk mendapatkan wawasan bisnis (insight) yang dapat ditindaklanjuti.

Tujuan utama dari proyek ini adalah untuk mengidentifikasi tren penjualan, profitabilitas, dan performa cabang menggunakan **Google BigQuery** untuk pemrosesan data dan **Looker Studio** untuk visualisasi interaktif.

---

## 📁 Sumber Data

Analisis ini didasarkan pada 4 dataset utama yang disediakan, yang disimpan dalam folder `data_sumber/`:

| Nama File | Deskripsi |
| :--- | :--- |
| `kf_final_transaction.csv` | Berisi data detail transaksi, harga, diskon, dan rating per transaksi. |
| `kf_product.csv` | Berisi data dimensi produk, termasuk nama dan kategori. |
| `kf_kantor_cabang.csv` | Berisi data dimensi cabang, termasuk lokasi (kota, provinsi) dan rating cabang. |
| `kf_inventory.csv` | Berisi data stok produk di setiap cabang (tidak digunakan di dashboard akhir). |

---

## ✅ Pencapaian Utama Proyek

Fitur dan analisis utama yang berhasil diselesaikan dalam proyek ini:

* **Transformasi Data (ETL):** Menggabungkan 4 tabel sumber menjadi satu tabel analitik utama (`tabel_analisa`) di BigQuery.
* **Kalkulasi Metrik Bisnis:** Menghitung kolom turunan krusial, termasuk `persentase_gross_laba` (berdasarkan 5 tingkatan harga), `nett_sales`, dan `nett_profit`.
* **Dashboard Interaktif:** Membangun dashboard *user-friendly* di Looker Studio dengan filter tanggal, kota, dan provinsi.
* **Analisis KPI:** Menampilkan KPI utama seperti Total Sales, Total Profit, Total Transaksi, dan Rata-rata Rating.
* **Analisis Geografis:** Memvisualisasikan `Total Profit per Provinsi` menggunakan Peta Gelembung (Bubble Map).
* **Analisis Anomali Cabang:** Menemukan cabang dengan `Rating Tertinggi` namun `Rating Transaksi` cenderung rendah (menggunakan tabel "Top 5 Cabang").
* **Analisis Produk:** Menampilkan "Performa Produk per Cabang" untuk mengidentifikasi produk terlaris di lokasi tertentu.

---

## 🛠️ Tools & Teknologi

* **Google BigQuery:** Digunakan untuk *data warehousing*, ETL (SQL Query), dan sebagai sumber data *live* untuk dashboard.
* **Google Looker Studio:** Digunakan untuk visualisasi data dan pembuatan dashboard interaktif.
* **Visual Studio Code:** Digunakan sebagai editor kode dan manajemen repository.
* **GitHub:** Digunakan untuk kontrol versi dan dokumentasi proyek.

---

## 📂 Struktur Repository

Berikut adalah struktur file dalam repository ini:

```

Project-Analisis-Kimia-Farma-2020-2023/
│
├── data\_sumber/
│   ├── kf\_final\_transaction.csv
│   ├── kf\_product.csv
│   ├── kf\_inventory.csv
│   └── kf\_kantor\_cabang.csv
│
├── query\_tabel\_analisa.sql       \# Query SQL utama (CREATE OR REPLACE TABLE)
├── hasil\_tabel\_analisa.sql       \# Query SQL untuk mengecek 100 transaksi terbaru
├── output\_analisa.xlsx           \# Sampel 100 baris data hasil dari tabel analisa
└── README.md                     \# Penjelasan proyek (file ini)

```

---

## 📊 Link Dashboard

Dashboard interaktif final dapat diakses melalui link di bawah ini:

**➡️ [Buka Dashboard Kinerja Kimia Farma 2020-2023]([LINK_DASHBOARD_MU])**
