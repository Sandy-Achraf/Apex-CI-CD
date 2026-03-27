create or replace editionable trigger wksp_elwagha50.trg_auto_create_driver_account after
    insert on wksp_elwagha50.company_drivers
    for each row
begin
    create_driver_egp_account(:new.driver_id,
                              :new.driver_name);
end;
/

alter trigger wksp_elwagha50.trg_auto_create_driver_account enable;


-- sqlcl_snapshot {"hash":"8f43cbaa104140726b102621e542df056c2e280e","type":"TRIGGER","name":"TRG_AUTO_CREATE_DRIVER_ACCOUNT","schemaName":"WKSP_ELWAGHA50","sxml":""}