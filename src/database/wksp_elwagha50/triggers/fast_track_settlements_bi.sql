create or replace editionable trigger wksp_elwagha50.fast_track_settlements_bi before
    insert on wksp_elwagha50.fast_track_settlements
    for each row
begin
    if :new.settlement_id is null then
        :new.settlement_id := 'FTSET-'
                              || lpad(seq_fast_track_settlements.nextval, 6, '0');
    end if;

    if :new.created is null then
        :new.created := current_timestamp;
    end if;

end;
/

alter trigger wksp_elwagha50.fast_track_settlements_bi enable;


-- sqlcl_snapshot {"hash":"575f5695923ca8fd88b6e806439a8e7408a0bcff","type":"TRIGGER","name":"FAST_TRACK_SETTLEMENTS_BI","schemaName":"WKSP_ELWAGHA50","sxml":""}