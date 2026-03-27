create or replace editionable trigger wksp_elwagha50.biu_suppliers_audit before
    insert or update on wksp_elwagha50.suppliers
    for each row
begin
    if inserting then
        :new.created := systimestamp;
        :new.created_by := nvl(
            apex_util.get_session_state('APP_USER_ID'),
            user
        );
    end if;

    :new.updated := systimestamp;
    :new.updated_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
end;
/

alter trigger wksp_elwagha50.biu_suppliers_audit enable;


-- sqlcl_snapshot {"hash":"6ab8333a21d680b634652cb99014168adba2d9f1","type":"TRIGGER","name":"BIU_SUPPLIERS_AUDIT","schemaName":"WKSP_ELWAGHA50","sxml":""}