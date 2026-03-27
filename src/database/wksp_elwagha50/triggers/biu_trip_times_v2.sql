create or replace editionable trigger wksp_elwagha50.biu_trip_times_v2 before
    insert or update on wksp_elwagha50.limo_trips_tracker_v2
    for each row
begin
    if inserting then
        if
            :new.status = 'ACTIVE'
            and :new.start_datetime is null
        then
            :new.start_datetime := systimestamp;
        end if;

    elsif updating then
        if
            :new.status = 'FINISHED'
            and :new.end_datetime is null
        then
            :new.end_datetime := systimestamp;
        end if;
    end if;
end;
/

alter trigger wksp_elwagha50.biu_trip_times_v2 enable;


-- sqlcl_snapshot {"hash":"1c5cb594577203734e797f48447113d3d7c35d54","type":"TRIGGER","name":"BIU_TRIP_TIMES_V2","schemaName":"WKSP_ELWAGHA50","sxml":""}