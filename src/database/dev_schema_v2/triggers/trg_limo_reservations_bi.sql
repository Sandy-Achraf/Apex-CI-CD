create or replace editionable trigger wksp_elwagha50.trg_limo_reservations_bi before
    insert on wksp_elwagha50.limo_reservations
    for each row
begin
    if :new.reservation_id is null then
        :new.reservation_id := 'LR-' || limo_reservation_seq.nextval;
    end if;

    :new.created := systimestamp;
    :new.created_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
    :new.updated := :new.created;
    :new.updated_by := :new.created_by;
end;
/

alter trigger wksp_elwagha50.trg_limo_reservations_bi enable;


-- sqlcl_snapshot {"hash":"67b92537d8d7b803a24599985b67797e43e79992","type":"TRIGGER","name":"TRG_LIMO_RESERVATIONS_BI","schemaName":"WKSP_ELWAGHA50","sxml":""}