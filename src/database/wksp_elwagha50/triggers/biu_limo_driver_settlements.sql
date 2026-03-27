create or replace editionable trigger wksp_elwagha50.biu_limo_driver_settlements before
    insert on wksp_elwagha50.limo_driver_settlements
    for each row
begin
    if :new.id is null then
        select
            'SETTLE-'
            || lpad(seq_limo_settlements.nextval, 6, '0')
        into :new.id
        from
            dual;

    end if;
end;
/

alter trigger wksp_elwagha50.biu_limo_driver_settlements enable;


-- sqlcl_snapshot {"hash":"6d859f89d05c0ef0c139aa812dcc7bfaab7ffc35","type":"TRIGGER","name":"BIU_LIMO_DRIVER_SETTLEMENTS","schemaName":"WKSP_ELWAGHA50","sxml":""}