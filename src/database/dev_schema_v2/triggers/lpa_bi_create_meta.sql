create or replace editionable trigger wksp_elwagha50.lpa_bi_create_meta before
    insert on wksp_elwagha50.limo_product_assignments
    for each row
begin
    :new.created := current_timestamp;
    :new.created_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
end;
/

alter trigger wksp_elwagha50.lpa_bi_create_meta enable;


-- sqlcl_snapshot {"hash":"db41fa111dec49fd22341d6f4eae00e9f3fb9283","type":"TRIGGER","name":"LPA_BI_CREATE_META","schemaName":"WKSP_ELWAGHA50","sxml":""}