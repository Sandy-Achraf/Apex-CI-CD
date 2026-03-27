create or replace editionable trigger wksp_elwagha50.biu_company_drivers_audit before
    insert or update on wksp_elwagha50.company_drivers
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

alter trigger wksp_elwagha50.biu_company_drivers_audit enable;


-- sqlcl_snapshot {"hash":"aa4366ab5598bd8e99c3f17944d84b45aa0a3a81","type":"TRIGGER","name":"BIU_COMPANY_DRIVERS_AUDIT","schemaName":"WKSP_ELWAGHA50","sxml":""}