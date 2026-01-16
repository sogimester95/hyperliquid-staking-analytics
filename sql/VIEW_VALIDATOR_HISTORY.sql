create or replace view HYPERLIQUID_DB.STAKING_SCHEMA.VIEW_VALIDATOR_HISTORY(
	REPORT_DATE,
	VALIDATOR_ADDRESS,
	VALIDATOR_STAKE
) as
SELECT 
    -- Adatok a külső listából (pl. dátum)
    f.value:date::DATE AS REPORT_DATE,
    g.value:name::STRING AS VALIDATOR_ADDRESS,
    g.value:stake::FLOAT AS VALIDATOR_STAKE,
FROM 
    HYPERLIQUID_DB.STAKING_SCHEMA.RAW_STAKING_METRICS,
    LATERAL FLATTEN(input => validatorDailyData) f,
    LATERAL FLATTEN(input => f.value:validatorStakes) g;
