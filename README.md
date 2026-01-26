# Hyperliquid L1 Staking & Validator Analytics (E2E Pipeline)

## 📊 Overview
This project is a high-performance End-to-End (E2E) data pipeline designed to monitor network decentralization and validator health on the Hyperliquid L1 blockchain. It tracks staking distribution, commission trends, and centralization risks by processing raw on-chain and off-chain data.

## 🛠️ Tech Stack
- **Language:** Python 3.12
- **Data Warehouse:** Snowflake (Cloud Data Platform)
- **ETL/ELT:** Python (Extraction), Snowflake SQL (Transformation using `LATERAL FLATTEN`)
- **Visualization:** Power BI Desktop
- **Data Source:** ASXN API

## 🏗️ Architecture
- **Extraction:** A custom Python script fetches semi-structured JSON data from the ASXN API, capturing real-time validator states.
- **Transformation (The "Silver" Layer):** Leveraging Snowflake's native JSON handling to transform nested arrays into relational structures using `LATERAL FLATTEN`.
- **Warehousing:** Structured data is stored in Snowflake for historical trend analysis and long-term validator performance tracking.
- **Analytics:** - **Dune Analytics:** Real-time SQL queries for live network monitoring.
- **Power BI:** High-level dashboard for business-centric insights (Commission variance, Stake distribution).

## 🚀 Key Technical Insights & Metrics
- **Centralization Risk Analysis:** Implemented a "Nakamoto Coefficient" style tracking showing that the Top 4 validators control >67% of the total stake.
- **Market Dynamics:** Analysis of commission rate variance to identify price competition within the validator set.
- **Network Health:** Monitoring active vs. target validator counts (Current: 24/30).

## 📂 Project Structure
- `/src`: `hyperliquid_staking_etl.py` - Python extraction and loading script.
- `/sql`: `validator_setup.sql` - Snowflake DDL/DML and JSON flattening logic.
- `/docs`: Architecture diagrams and dashboard screenshots.


## 📈 Dashboard Preview
- [Main Dashboard](docs/dashboard_main.png)
- [Deep Dive Page](docs/dashboard_details.png)

---
### 🔗 Live Demo & Links
- [**Dune Analytics - Hyperliquid General Dashboard**](https://dune.com/sogimester/hyperliquid-general)
- [**Dune Analytics - Hype token Advanced Metrics for Long-term Investment**](https://dune.com/sogimester/hype-advanced-metrics)
- [**LinkedIn**](https://www.linkedin.com/in/andr%C3%A1s-%C3%A1goston-9b675288/)
- [**X**](https://x.com/sogimester)

*Developed by sogimester*
