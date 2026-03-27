create or replace force editionable view wksp_elwagha50.v_accounts_with_balances_app_view (
    account_id,
    account_name,
    name_ar,
    account_code,
    currency_code,
    symbol,
    flag_url,
    balance
) as
    select
        a.account_id,
        a.account_name,
        at.name_ar,
        a.account_code,
        c.currency_code,
        c.symbol,
    -- Flag image URL (API)
        'https://g84c211b3b16868-apexadb1.adb.me-jeddah-1.oraclecloudapps.com/ords/blitzlayali333/CURFLAG/' || c.currency_code as flag_url
        ,
    -- Balance from the view
        nvl(b.balance, 0)                                                                                                      as balance
    from
             accounts a
        join account_types      at on a.account_type = at.account_type_code
        join currencies         c on a.currency_code = c.currency_code
        left join v_account_balances b on a.account_id = b.account_id;


-- sqlcl_snapshot {"hash":"71c94febf3e6ebeaccd36218b4323006e11a30c4","type":"VIEW","name":"V_ACCOUNTS_WITH_BALANCES_APP_VIEW","schemaName":"WKSP_ELWAGHA50","sxml":""}