create or replace editionable trigger wksp_elwagha50.aiu_trip_sessions_v2 after
    insert or update on wksp_elwagha50.limo_trips_tracker_v2
    for each row
declare
    v_session_type varchar2(10);
    v_user_id      varchar2(100) := apex_util.get_session_state('APP_USER_ID');
begin
    if inserting then
        if :new.status = 'ACTIVE' then
            v_session_type := 'START';
        elsif :new.status = 'PAUSED' then
            v_session_type := 'PAUSE';
        end if;
    elsif updating then
        if :new.status != :old.status then
            case :new.status
                when 'ACTIVE' then
                    v_session_type := 'RESUME';
                when 'PAUSED' then
                    v_session_type := 'PAUSE';
                when 'FINISHED' then
                    v_session_type := 'FINISH';
                else
                    v_session_type := null;
            end case;

        end if;
    end if;

    if v_session_type is not null then
        insert into limo_trip_sessions (
            trip_id,
            session_type,
            started_at,
            created_by
        ) values ( :new.trip_id,
                   v_session_type,
                   systimestamp,
                   v_user_id );

    end if;

end;
/

alter trigger wksp_elwagha50.aiu_trip_sessions_v2 enable;


-- sqlcl_snapshot {"hash":"049ca787600c178e47dea7790c5b6d444ba3e30b","type":"TRIGGER","name":"AIU_TRIP_SESSIONS_V2","schemaName":"WKSP_ELWAGHA50","sxml":""}