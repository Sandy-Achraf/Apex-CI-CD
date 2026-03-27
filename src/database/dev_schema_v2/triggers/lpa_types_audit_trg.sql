create or replace editionable trigger wksp_elwagha50.lpa_types_audit_trg before
    insert or update on wksp_elwagha50.limo_assignment_types
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

alter trigger wksp_elwagha50.lpa_types_audit_trg enable;


-- sqlcl_snapshot {"hash":"a11dee4f409deed153793fbfe0c37cfc2c4ea983","type":"TRIGGER","name":"LPA_TYPES_AUDIT_TRG","schemaName":"WKSP_ELWAGHA50","sxml":""}