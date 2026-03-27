create or replace editionable trigger wksp_elwagha50.biu_limo_trip_sessions before
    insert on wksp_elwagha50.limo_trip_sessions
    for each row
begin
    if :new.session_id is null then
        :new.session_id := 'TRIPSESS-'
                           || to_char(seq_limo_trip_sessions.nextval, 'FM000000');
    end if;

    if :new.created is null then
        :new.created := sysdate;
    end if;

    if :new.created_by is null then
        :new.created_by := sys_context('APEX$SESSION', 'APP_USER_ID');
    end if;

end;
/

alter trigger wksp_elwagha50.biu_limo_trip_sessions enable;


-- sqlcl_snapshot {"hash":"f592739e9ddebb8464ce84635a737ae631f99f7f","type":"TRIGGER","name":"BIU_LIMO_TRIP_SESSIONS","schemaName":"WKSP_ELWAGHA50","sxml":""}