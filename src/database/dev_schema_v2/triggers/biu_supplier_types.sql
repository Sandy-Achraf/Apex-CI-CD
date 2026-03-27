create or replace editionable trigger wksp_elwagha50.biu_supplier_types before
    insert or update on wksp_elwagha50.supplier_types
    for each row
declare
    v_user_id varchar2(100);
begin
  -- Get current user ID from session or fallback
    v_user_id := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
    if inserting then
        :new.created := systimestamp;
        :new.created_by := v_user_id;
    end if;

    if inserting
    or updating then
        :new.updated := systimestamp;
        :new.updated_by := v_user_id;
    end if;

end;
/

alter trigger wksp_elwagha50.biu_supplier_types enable;


-- sqlcl_snapshot {"hash":"cb309bf486cc1e4ff4c91db9d3997ae35b97173c","type":"TRIGGER","name":"BIU_SUPPLIER_TYPES","schemaName":"WKSP_ELWAGHA50","sxml":""}