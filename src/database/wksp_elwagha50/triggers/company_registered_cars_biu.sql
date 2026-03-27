create or replace editionable trigger wksp_elwagha50.company_registered_cars_biu before
    insert or update on wksp_elwagha50.company_registered_cars
    for each row
begin
    if inserting then
        -- Assign ID if not provided
        if :new.id is null then
            :new.id := 'CAR-'
                       || lpad(seq_company_registered_cars.nextval, 6, '0');
        end if;
        -- Audit fields
        :new.created := current_timestamp;
        :new.created_by := nvl(
            apex_util.get_session_state('APP_USER_ID'),
            user
        );
        if :new.status is null then
            :new.status := 'ACTIVE';
        end if;

    end if;

    -- Always update these on insert or update
    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        apex_util.get_session_state('APP_USER_ID'),
        user
    );
end;
/

alter trigger wksp_elwagha50.company_registered_cars_biu enable;


-- sqlcl_snapshot {"hash":"7f6787104a96ab35c04ecd87559a8d2ab9e4a79d","type":"TRIGGER","name":"COMPANY_REGISTERED_CARS_BIU","schemaName":"WKSP_ELWAGHA50","sxml":""}