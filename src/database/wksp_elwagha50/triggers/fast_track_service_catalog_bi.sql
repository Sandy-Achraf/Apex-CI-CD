create or replace editionable trigger wksp_elwagha50.fast_track_service_catalog_bi before
    insert on wksp_elwagha50.fast_track_service_catalog
    for each row
begin
    if :new.service_id is null then
        :new.service_id := 'FTSERV-'
                           || lpad(seq_fast_track_service_catalog.nextval, 5, '0');
    end if;

    if :new.created is null then
        :new.created := current_timestamp;
    end if;

end;
/

alter trigger wksp_elwagha50.fast_track_service_catalog_bi enable;


-- sqlcl_snapshot {"hash":"39f6be79163810cbc3063f0165f9aaab6de1cc93","type":"TRIGGER","name":"FAST_TRACK_SERVICE_CATALOG_BI","schemaName":"WKSP_ELWAGHA50","sxml":""}