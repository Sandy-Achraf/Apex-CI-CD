create or replace editionable trigger wksp_elwagha50.biu_limo_trip_collections before
    insert on wksp_elwagha50.limo_trip_collections
    for each row
declare
    v_rate number;
begin
    if :new.collection_id is null then
        :new.collection_id := 'COLLECT-'
                              || lpad(seq_limo_trip_collections.nextval, 6, '0');
    end if;

    if :new.created is null then
        :new.created := systimestamp;
    end if;

    if :new.created_by is null then
        :new.created_by := nvl(
            v('APP_USER_ID'),
            user
        );
    end if;

  -- Default exchange rate from the trip if not provided
    if :new.exchange_rate_used is null then
        select
            nvl(t.exchange_rate, 1)
        into v_rate
        from
            limo_trips_tracker_v2 t
        where
            t.trip_id = :new.trip_id;

        :new.exchange_rate_used := nvl(v_rate, 1);
    end if;

end;
/

alter trigger wksp_elwagha50.biu_limo_trip_collections enable;


-- sqlcl_snapshot {"hash":"619bb450b2ce6b9d0ecdd9b5ebd5ceb8b3ff22f5","type":"TRIGGER","name":"BIU_LIMO_TRIP_COLLECTIONS","schemaName":"WKSP_ELWAGHA50","sxml":""}