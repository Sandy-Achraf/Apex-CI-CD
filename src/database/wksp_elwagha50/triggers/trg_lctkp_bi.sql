create or replace editionable trigger wksp_elwagha50.trg_lctkp_bi before
    insert on wksp_elwagha50.limo_car_type_km_prices
    for each row
begin
    if :new.price_id is null then
        :new.price_id := 'KMP-'
                         || lpad(seq_limo_car_type_km_price.nextval, 6, '0');
    end if;

    :new.created := systimestamp;
    :new.created_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
    :new.updated := :new.created;
    :new.updated_by := :new.created_by;
end;
/

alter trigger wksp_elwagha50.trg_lctkp_bi enable;


-- sqlcl_snapshot {"hash":"173dfa09d8a8bd428fac874172100f4338ec5df6","type":"TRIGGER","name":"TRG_LCTKP_BI","schemaName":"WKSP_ELWAGHA50","sxml":""}