create or replace editionable trigger wksp_elwagha50.trg_default_currency_update before
    update on wksp_elwagha50.default_currency
    for each row
begin
    :new.set_date := sysdate;
    :new.set_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
end;
/

alter trigger wksp_elwagha50.trg_default_currency_update enable;


-- sqlcl_snapshot {"hash":"b7a37ee74a5dd22508e5d324ad0c4186104105b6","type":"TRIGGER","name":"TRG_DEFAULT_CURRENCY_UPDATE","schemaName":"WKSP_ELWAGHA50","sxml":""}