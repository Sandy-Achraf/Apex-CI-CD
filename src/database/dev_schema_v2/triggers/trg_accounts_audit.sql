create or replace editionable trigger wksp_elwagha50.trg_accounts_audit before
    insert or update on wksp_elwagha50.accounts
    for each row
declare
    v_user varchar2(100);
begin
  -- Prefer APEX session user if available
    begin
        v_user := nvl(
            apex_util.get_session_state('APP_USER_ID'),
            user
        );
    exception
        when others then
            v_user := user;
    end;

    if inserting then
        :new.created := systimestamp;
        :new.created_by := v_user;
    end if;

    if updating then
        :new.updated := systimestamp;
        :new.updated_by := v_user;
    end if;

end;
/

alter trigger wksp_elwagha50.trg_accounts_audit enable;


-- sqlcl_snapshot {"hash":"86118beb4c843da5d64e987d1aa07672cdcb9ae8","type":"TRIGGER","name":"TRG_ACCOUNTS_AUDIT","schemaName":"WKSP_ELWAGHA50","sxml":""}