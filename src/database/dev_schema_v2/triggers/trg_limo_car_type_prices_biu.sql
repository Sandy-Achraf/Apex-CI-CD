create or replace editionable trigger wksp_elwagha50.trg_limo_car_type_prices_biu before
    insert or update on wksp_elwagha50.limo_car_type_prices
    for each row
begin
  -- Default exchange rate for EGP
    if :new.currency = 'EGP' then
        :new.exchange_rate := 1;
    end if;

  -- Set created metadata on INSERT
    if inserting then
        :new.created := systimestamp;
        :new.created_by := nvl(
            apex_util.get_session_state('APP_USER_ID'),
            user
        );
    end if;

  -- Always set updated metadata
    :new.updated := systimestamp;
    :new.updated_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );

  -- Touch parent table LIMO_CAR_TYPES on UPDATE
    if updating then
        update limo_car_types
        set
            updated = systimestamp,
            updated_by = nvl(
                apex_util.get_session_state('APP_USER_ID'),
                user
            )
        where
            car_type_id = :new.car_type_id;

    end if;

end;
/

alter trigger wksp_elwagha50.trg_limo_car_type_prices_biu enable;


-- sqlcl_snapshot {"hash":"85ca7b336b8baaab4571cd5fdfb0244b407004c5","type":"TRIGGER","name":"TRG_LIMO_CAR_TYPE_PRICES_BIU","schemaName":"WKSP_ELWAGHA50","sxml":""}