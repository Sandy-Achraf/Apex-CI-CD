create or replace editionable trigger wksp_elwagha50.trg_las_audit before
    insert or update on wksp_elwagha50.limo_add_services
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

alter trigger wksp_elwagha50.trg_las_audit enable;


-- sqlcl_snapshot {"hash":"9ee29e0668e1de2dadb450a28263e88daf988509","type":"TRIGGER","name":"TRG_LAS_AUDIT","schemaName":"WKSP_ELWAGHA50","sxml":""}