create or replace editionable trigger wksp_elwagha50.biu_fast_track_assignments before
    insert on wksp_elwagha50.fast_track_assignments
    for each row
begin
    if :new.assignment_id is null then
        select
            'FTA-'
            || lpad(
                to_char(fast_track_assign_seq.nextval),
                3,
                '0'
            )
        into :new.assignment_id
        from
            dual;

    end if;

    if :new.created is null then
        :new.created := current_timestamp;
    end if;

end;
/

alter trigger wksp_elwagha50.biu_fast_track_assignments enable;


-- sqlcl_snapshot {"hash":"d42b54fb0510fc4a385bb813f92ed9e4356b1db9","type":"TRIGGER","name":"BIU_FAST_TRACK_ASSIGNMENTS","schemaName":"WKSP_ELWAGHA50","sxml":""}