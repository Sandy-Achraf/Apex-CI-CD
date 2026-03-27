create or replace editionable trigger wksp_elwagha50.trg_km_price_validate before
    insert or update on wksp_elwagha50.limo_car_type_km_prices
    for each row
declare
    v_cnt number;
begin
    select
        count(*)
    into v_cnt
    from
        limo_car_type_km_prices
    where
            car_type_id = :new.car_type_id
        and is_active = 'Y'
        and price_id <> nvl(:new.price_id,
                            'X')
        and ( nvl(:new.effective_from,
                  systimestamp) between nvl(effective_from, systimestamp) and nvl(effective_to, systimestamp + 9999) );

    if v_cnt > 0 then
        raise_application_error(-20001, 'Overlapping KM price detected');
    end if;
end;
/

alter trigger wksp_elwagha50.trg_km_price_validate disable;


-- sqlcl_snapshot {"hash":"3e69c959b142bac954fd1b7b10e425de394b0842","type":"TRIGGER","name":"TRG_KM_PRICE_VALIDATE","schemaName":"WKSP_ELWAGHA50","sxml":""}