create or replace editionable trigger wksp_elwagha50.trg_ltxp_audit before
    insert or update on wksp_elwagha50.limo_trip_expenses
    for each row
declare
    v_user_id varchar2(50);
begin
    v_user_id := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
    if inserting then
        :new.created := systimestamp;
        :new.created_by := v_user_id;
    end if;

    :new.updated := systimestamp;
    :new.updated_by := v_user_id;
end;
/

alter trigger wksp_elwagha50.trg_ltxp_audit enable;


-- sqlcl_snapshot {"hash":"28aec4a1f88cd663fcb784ddba33dc2885d86915","type":"TRIGGER","name":"TRG_LTXP_AUDIT","schemaName":"WKSP_ELWAGHA50","sxml":""}