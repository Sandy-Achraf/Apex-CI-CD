create or replace editionable trigger wksp_elwagha50.trg_las_id before
    insert on wksp_elwagha50.limo_add_services
    for each row
begin
    if :new.add_service_id is null then
        :new.add_service_id := 'ADDSVC-'
                               || to_char(seq_limo_add_service.nextval, 'FM000000');
    end if;
end;
/

alter trigger wksp_elwagha50.trg_las_id enable;


-- sqlcl_snapshot {"hash":"f5c65eb4a1c794cc9a8c62a8e353e134f71f8df5","type":"TRIGGER","name":"TRG_LAS_ID","schemaName":"WKSP_ELWAGHA50","sxml":""}