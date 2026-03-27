create or replace editionable trigger wksp_elwagha50.trg_limo_car_types_bu before
    update on wksp_elwagha50.limo_car_types
    for each row
begin
    :new.updated := systimestamp;
    :new.updated_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
end;
/

alter trigger wksp_elwagha50.trg_limo_car_types_bu enable;


-- sqlcl_snapshot {"hash":"2731093005da14169117932b12706cbf8c4f62cc","type":"TRIGGER","name":"TRG_LIMO_CAR_TYPES_BU","schemaName":"WKSP_ELWAGHA50","sxml":""}