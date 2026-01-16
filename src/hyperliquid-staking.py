import requests
import pandas as pd
from datetime import datetime
import os

def fetch_hyperliquid_staking_data():
    """
    Fetches staking metrics from Hyperliquid API and saves to a CSV file.
    """
    url = "https://api-data.asxn.xyz/api/hype-staking/metrics"
    filename = "hyperliquid_staking.csv"

    try:
        response = requests.get(url, timeout=10)
        response.raise_for_status()
        data = response.json()

        # Handle both dict and list responses
        df = pd.DataFrame([data]) if isinstance(data, dict) else pd.DataFrame(data)

        # Add metadata
        df['snapshot_date'] = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        # Save to CSV
        df.to_csv(filename, index=False, encoding='utf-8')
        print(f"Successfully saved {len(df)} records to {filename}")

    except requests.exceptions.RequestException as e:
        print(f"Network error occurred: {e}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

if __name__ == "__main__":

    fetch_hyperliquid_staking_data()
