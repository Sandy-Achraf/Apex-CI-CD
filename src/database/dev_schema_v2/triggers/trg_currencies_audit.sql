create or replace editionable trigger wksp_elwagha50.trg_currencies_audit before
    insert or update on wksp_elwagha50.currencies
    for each row
declare
    v_user varchar2(100) := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
begin
    if inserting then
        :new.created := systimestamp;
        :new.created_by := v_user;
    end if;
end;
/

alter trigger wksp_elwagha50.trg_currencies_audit enable;


-- sqlcl_snapshot {"hash":"7022e9ec4c58b82ae21a65af5e9c86c8a1c5e5be","type":"TRIGGER","name":"TRG_CURRENCIES_AUDIT","schemaName":"WKSP_ELWAGHA50","sxml":""}