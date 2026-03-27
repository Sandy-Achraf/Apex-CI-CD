create or replace force editionable view wksp_elwagha50.vw_limo_car_type_current_km_price (
    car_type_id,
    price_per_km,
    currency
) as
    select
        p.car_type_id,
        p.price_per_km,
        p.currency
    from
        limo_car_type_km_prices p
    where
        p.is_active = 'Y';


-- sqlcl_snapshot {"hash":"9685c63f04b0afef0366ab5cf3e767116a838fa0","type":"VIEW","name":"VW_LIMO_CAR_TYPE_CURRENT_KM_PRICE","schemaName":"WKSP_ELWAGHA50","sxml":""}