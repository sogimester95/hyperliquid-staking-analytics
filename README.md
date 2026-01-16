# Hyperliquid Staking & Validator Analytics

This project is a comprehensive **End-to-End data pipeline** designed to analyze validator performance and staking distribution on the **Hyperliquid L1** blockchain. The primary goal is to provide transparency regarding network decentralization and staking trends.

## Technical Architecture
1. **Data Extraction (Python)**: A custom script fetches raw JSON data from the ASXN API.
2. **Data Warehousing (Snowflake)**: Data is loaded into Snowflake, where semi-structured JSON is transformed into relational views using `LATERAL FLATTEN`.
3. **Visualization (Power BI)**: An interactive dashboard connected via **ODBC** provides real-time business insights and trend analysis.
4. **On-chain Analytics (Dune)**: SQL-based real-time queries to monitor live network status and validator health.

## Key Insights (Business Analysis)
- **Centralization Risk**: The Top 4 validators control over **67% of the total stake**. This is a critical point for network security and censorship resistance.
- **Market Competition**: The low variance in commission rates suggests intense price competition among validators to attract stakers.
- **Network Health**: Currently, **24 active validators** are operational out of the network target of 30.

## 📂 Repository Structure
- `/src`: `hyperliquid_api_to_csv.py` - Python extraction script (cleaned for production).
- `/sql`: Snowflake SQL transformation scripts (DML/DDL).
- `/docs`: Dashboard screenshots, architecture diagrams, and analysis reports.

## 📈 Dashboard Preview
- [Main Dashboard](docs/dashboard_main.png)
- [Deep Dive Page](docs/dashboard_details.png)

---
### 🔗 Live Demo & Links
- [**Dune Analytics Hyperliquid General Dashboard**](https://dune.com/sogimester/hyperliquid-general)
- [**LinkedIn**](https://www.linkedin.com/in/andr%C3%A1s-%C3%A1goston-9b675288/)
- [**X**](https://x.com/sogimester)

*Developed by sogimester*
