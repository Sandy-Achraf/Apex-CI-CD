create or replace editionable trigger wksp_elwagha50.fast_track_settlement_details_bi before
    insert on wksp_elwagha50.fast_track_settlement_details
    for each row
begin
    if :new.detail_id is null then
        :new.detail_id := 'FTSD-'
                          || lpad(seq_fast_track_settlement_details.nextval, 6, '0');
    end if;

    if :new.created is null then
        :new.created := current_timestamp;
    end if;

end;
/

alter trigger wksp_elwagha50.fast_track_settlement_details_bi enable;


-- sqlcl_snapshot {"hash":"9ad5f76fa05fbd5580b2dca59ed3e47314a5005a","type":"TRIGGER","name":"FAST_TRACK_SETTLEMENT_DETAILS_BI","schemaName":"WKSP_ELWAGHA50","sxml":""}