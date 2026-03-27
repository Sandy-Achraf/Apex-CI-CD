create or replace editionable trigger wksp_elwagha50.lpa_bu_update_meta before
    update on wksp_elwagha50.limo_product_assignments
    for each row
begin
    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
end;
/

alter trigger wksp_elwagha50.lpa_bu_update_meta enable;


-- sqlcl_snapshot {"hash":"7ca4d260ac8fe9bd553129193edebecc5cdffd50","type":"TRIGGER","name":"LPA_BU_UPDATE_META","schemaName":"WKSP_ELWAGHA50","sxml":""}