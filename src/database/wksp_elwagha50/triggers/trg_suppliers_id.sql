create or replace editionable trigger wksp_elwagha50.trg_suppliers_id before
    insert on wksp_elwagha50.suppliers
    for each row
    when ( new.supplier_id is null )
declare
    v_next number;
begin
    select
        seq_supplier_id.nextval
    into v_next
    from
        dual;

    :new.supplier_id := 'SUP-'
                        || lpad(v_next, 4, '0');
end;
/

alter trigger wksp_elwagha50.trg_suppliers_id enable;


-- sqlcl_snapshot {"hash":"6c2960209e1f0ddc4dfe2253c5111426f1ab53d1","type":"TRIGGER","name":"TRG_SUPPLIERS_ID","schemaName":"WKSP_ELWAGHA50","sxml":""}