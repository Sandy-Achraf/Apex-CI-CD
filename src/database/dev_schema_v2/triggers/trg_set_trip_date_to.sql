create or replace editionable trigger wksp_elwagha50.trg_set_trip_date_to before
    insert or update on wksp_elwagha50.limo_products
    for each row
begin
    if :new.trip_type = 'TRANSFER' then
        :new.trip_date_to := :new.trip_date_from;
    end if;
end;
/

alter trigger wksp_elwagha50.trg_set_trip_date_to enable;


-- sqlcl_snapshot {"hash":"94251605c0cfa52dfef156b4e785a521870b7718","type":"TRIGGER","name":"TRG_SET_TRIP_DATE_TO","schemaName":"WKSP_ELWAGHA50","sxml":""}