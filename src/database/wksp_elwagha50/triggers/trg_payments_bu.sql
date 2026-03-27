create or replace editionable trigger wksp_elwagha50.trg_payments_bu before
    update on wksp_elwagha50.payments
    for each row
begin
    :new.updated := systimestamp;
    :new.updated_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
end;
/

alter trigger wksp_elwagha50.trg_payments_bu enable;


-- sqlcl_snapshot {"hash":"49c8c7b8d281bf790e8d86987fe8fc0e77d5f7b6","type":"TRIGGER","name":"TRG_PAYMENTS_BU","schemaName":"WKSP_ELWAGHA50","sxml":""}