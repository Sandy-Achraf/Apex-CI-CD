create or replace editionable trigger wksp_elwagha50.company_registered_cars_audit_trg before
    insert or update on wksp_elwagha50.company_registered_cars
    for each row
begin
    if inserting then
        :new.created := current_timestamp;
        :new.created_by := nvl(
            apex_util.get_session_state('APP_USER_ID'),
            user
        );
    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
end;
/

alter trigger wksp_elwagha50.company_registered_cars_audit_trg enable;


-- sqlcl_snapshot {"hash":"cfae0d360a30466fedcb4210597bec998325d67a","type":"TRIGGER","name":"COMPANY_REGISTERED_CARS_AUDIT_TRG","schemaName":"WKSP_ELWAGHA50","sxml":""}