create or replace force editionable view wksp_elwagha50.v_latest_currency_rates (
    currency_code,
    currency_name_ar,
    currency_name_en,
    symbol,
    exchange_rate,
    rate_date
) as
    select
        c.currency_code,
        c.currency_name_ar,
        c.currency_name_en,
        c.symbol,
        (
            select
                r.exchange_rate
            from
                currency_rates r
            where
                    r.currency_code = c.currency_code
                and r.rate_date = (
                    select
                        max(r2.rate_date)
                    from
                        currency_rates r2
                    where
                        r2.currency_code = c.currency_code
                )
            fetch first 1 rows only
        ) as exchange_rate,
        (
            select
                r.rate_date
            from
                currency_rates r
            where
                    r.currency_code = c.currency_code
                and r.rate_date = (
                    select
                        max(r2.rate_date)
                    from
                        currency_rates r2
                    where
                        r2.currency_code = c.currency_code
                )
            fetch first 1 rows only
        ) as rate_date
    from
        currencies c;


-- sqlcl_snapshot {"hash":"bc76ca4e54c38b6accc7c67fcd798be357dc91c2","type":"VIEW","name":"V_LATEST_CURRENCY_RATES","schemaName":"WKSP_ELWAGHA50","sxml":""}