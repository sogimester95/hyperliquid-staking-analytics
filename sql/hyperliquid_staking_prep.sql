-- 1. Create a Warehouse
CREATE OR REPLACE WAREHOUSE hyperliquid_wh 
WITH WAREHOUSE_SIZE = 'XSMALL' 
AUTO_SUSPEND = 60 
AUTO_RESUME = TRUE;

-- 2. Create a Database
CREATE OR REPLACE DATABASE hyperliquid_db;

-- 3. Create a Schema
CREATE OR REPLACE SCHEMA hyperliquid_db.staking_schema;

-- 4. Create the Table
CREATE OR REPLACE TABLE hyperliquid_db.staking_schema.raw_staking_metrics (
    totalSupply FLOAT,
    currentTotalStake FLOAT,
    currentYield FLOAT,
    stakingPercentage FLOAT,
    currentValidatorStakes VARIANT,
    validatorTimeseries VARIANT,
    validatorDailyData VARIANT,
    cumulativeTotalStaked FLOAT,
    activeValidators INTEGER,
    averageStakePerValidator FLOAT,
    dailyData VARIANT,
    stakeSupplyTimeseries VARIANT,
    snapshot_date TIMESTAMP
);

