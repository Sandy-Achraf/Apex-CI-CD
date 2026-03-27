create or replace editionable trigger wksp_elwagha50.main_res_biu before
    insert or update on wksp_elwagha50.main_reservations
    for each row
begin
    if inserting then
        if :new.main_res_id is null then
            :new.main_res_id := 'MR-'
                                || lpad(seq_main_res_id.nextval, 6, '0');
        end if;

        :new.created := systimestamp;
    end if;

    if updating then
        :new.updated := systimestamp;
    end if;
end;
/

alter trigger wksp_elwagha50.main_res_biu enable;


-- sqlcl_snapshot {"hash":"8c9a17f22c3767a52687712c70600e68f58c2721","type":"TRIGGER","name":"MAIN_RES_BIU","schemaName":"WKSP_ELWAGHA50","sxml":""}