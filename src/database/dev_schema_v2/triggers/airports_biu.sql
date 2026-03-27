create or replace editionable trigger wksp_elwagha50.airports_biu before
    insert or update on wksp_elwagha50.airports
    for each row
declare
    v_user varchar2(100);
begin
    -- Get APEX user ID for audit (string)
    v_user := sys_context('APEX$SESSION', 'APP_USER_ID');
    if inserting then
        if :new.airport_id is null then
            :new.airport_id := 'AP-'
                               || lpad(seq_airports.nextval, 6, '0');
        end if;

        :new.created := sysdate;
        :new.created_by := v_user;
    end if;

    if updating then
        :new.updated := sysdate;
        :new.updated_by := v_user;
    end if;

end;
/

alter trigger wksp_elwagha50.airports_biu enable;


-- sqlcl_snapshot {"hash":"13b8b8e412df5c12087234f056e512859cdd45a6","type":"TRIGGER","name":"AIRPORTS_BIU","schemaName":"WKSP_ELWAGHA50","sxml":""}