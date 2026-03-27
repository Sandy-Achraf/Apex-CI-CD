create or replace editionable trigger wksp_elwagha50.trg_limo_car_types_bi before
    insert on wksp_elwagha50.limo_car_types
    for each row
begin
    if :new.car_type_id is null then
        :new.car_type_id := 'CAR-'
                            || lpad(limo_car_type_seq.nextval, 5, '0');
    end if;

    :new.created := systimestamp;
    :new.created_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );

  -- initialize UPDATED fields on insert as well
    :new.updated := :new.created;
    :new.updated_by := :new.created_by;
end;
/

alter trigger wksp_elwagha50.trg_limo_car_types_bi enable;


-- sqlcl_snapshot {"hash":"7f89ccc193c2ec33b793a43eb9b7f1f7d7d0ba53","type":"TRIGGER","name":"TRG_LIMO_CAR_TYPES_BI","schemaName":"WKSP_ELWAGHA50","sxml":""}