create or replace editionable trigger wksp_elwagha50.lpa_protect_created before
    update on wksp_elwagha50.limo_product_assignments
    for each row
begin
    if :new.created <> :old.created
    or :new.created_by <> :old.created_by then
        raise_application_error(-20001, 'CREATED fields cannot be modified.');
    end if;
end;
/

alter trigger wksp_elwagha50.lpa_protect_created enable;


-- sqlcl_snapshot {"hash":"7d9f2a0952691d039856b4df91fad22d763b9055","type":"TRIGGER","name":"LPA_PROTECT_CREATED","schemaName":"WKSP_ELWAGHA50","sxml":""}