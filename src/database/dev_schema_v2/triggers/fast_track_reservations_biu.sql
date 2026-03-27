create or replace editionable trigger wksp_elwagha50.fast_track_reservations_biu before
    insert or update on wksp_elwagha50.fast_track_reservations
    for each row
begin
    if inserting then
        if :new.reservation_id is null then
            :new.reservation_id := 'FT-'
                                   || lpad(seq_fast_track_reservations.nextval, 6, '0');
        end if;

        :new.created := current_timestamp;
        :new.created_by := nvl(
            apex_util.get_session_state('APP_USER_ID'),
            user
        );
        if :new.status is null then
            :new.status := 'PENDING';
        end if;

    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
end;
/

alter trigger wksp_elwagha50.fast_track_reservations_biu enable;


-- sqlcl_snapshot {"hash":"c63def2eb3ee7c6d241a239a1642e68292871190","type":"TRIGGER","name":"FAST_TRACK_RESERVATIONS_BIU","schemaName":"WKSP_ELWAGHA50","sxml":""}