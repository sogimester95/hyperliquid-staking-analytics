create or replace view HYPERLIQUID_DB.STAKING_SCHEMA.VIEW_DAILY_TRENDS(
	REPORT_DATE,
	TOTAL_STAKED,
	YIELD_PERCENT,
	VALIDATOR_NAME
) as
SELECT 
    f.value:date::DATE AS REPORT_DATE,
    f.value:totalStake::FLOAT AS TOTAL_STAKED, -- Az API-ban 'totalStaked' (d-vel a végén)
    f.value:yield::FLOAT * 100 AS YIELD_PERCENT,
    g.value:name::STRING AS VALIDATOR_NAME -- Az API-ban 'validatorName' a kulcs
FROM HYPERLIQUID_DB.STAKING_SCHEMA.RAW_STAKING_METRICS,
LATERAL FLATTEN(input => dailyData) f,
LATERAL FLATTEN(input => currentValidatorStakes) g
WHERE
    1=1;
