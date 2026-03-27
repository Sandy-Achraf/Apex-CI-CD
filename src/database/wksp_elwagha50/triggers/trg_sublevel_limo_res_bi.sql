create or replace editionable trigger wksp_elwagha50.trg_sublevel_limo_res_bi before
    insert on wksp_elwagha50.sublevel_limo_res
    for each row
begin
    :new.created := systimestamp;
    :new.created_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
    :new.updated := :new.created;
    :new.updated_by := :new.created_by;
end;
/

alter trigger wksp_elwagha50.trg_sublevel_limo_res_bi enable;


-- sqlcl_snapshot {"hash":"2cc66c0ecc4a638a10c6f343987de98fcf5e0419","type":"TRIGGER","name":"TRG_SUBLEVEL_LIMO_RES_BI","schemaName":"WKSP_ELWAGHA50","sxml":""}