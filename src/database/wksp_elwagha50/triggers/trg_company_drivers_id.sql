create or replace editionable trigger wksp_elwagha50.trg_company_drivers_id before
    insert on wksp_elwagha50.company_drivers
    for each row
    when ( new.driver_id is null )
declare
    v_next number;
begin
    select
        seq_company_driver_id.nextval
    into v_next
    from
        dual;

    :new.driver_id := 'DRV-'
                      || lpad(v_next, 3, '0');
end;
/

alter trigger wksp_elwagha50.trg_company_drivers_id enable;


-- sqlcl_snapshot {"hash":"74bf8a947a1908281e2c5774a276013f7748959e","type":"TRIGGER","name":"TRG_COMPANY_DRIVERS_ID","schemaName":"WKSP_ELWAGHA50","sxml":""}