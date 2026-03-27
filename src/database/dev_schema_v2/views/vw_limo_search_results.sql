create or replace force editionable view wksp_elwagha50.vw_limo_search_results (
    service_type,
    car_type_id,
    car_type_name,
    category,
    main_photo_url,
    max_passengers,
    max_luggage,
    distance_km,
    hours,
    final_price,
    currency,
    price_model,
    session_id
) as
    select
        r.service_type,
        c.car_type_id,
        c.car_type_name,
        c.category,
        c.main_photo_url,
        c.max_passengers,
        c.max_luggage,
        r.distance_km,
        r.hours,
        r.final_price,
        r.currency,
        r.price_model,
        r.session_id
    from
             limo_search_runtime r
        join limo_car_types c on c.car_type_id = r.car_type_id;


-- sqlcl_snapshot {"hash":"9c4c8fcc19f317a7352f677898a66a2124581f38","type":"VIEW","name":"VW_LIMO_SEARCH_RESULTS","schemaName":"WKSP_ELWAGHA50","sxml":""}