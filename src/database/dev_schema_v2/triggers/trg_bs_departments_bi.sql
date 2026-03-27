create or replace editionable trigger wksp_elwagha50.trg_bs_departments_bi before
    insert on wksp_elwagha50.bs_departments
    for each row
begin
    if :new.id is null then
        select
            seq_bs_departments.nextval
        into :new.id
        from
            dual;

    end if;
end;
/

alter trigger wksp_elwagha50.trg_bs_departments_bi enable;


-- sqlcl_snapshot {"hash":"52eb1a338cab5a975b9ed4a405cbc242af332b6e","type":"TRIGGER","name":"TRG_BS_DEPARTMENTS_BI","schemaName":"WKSP_ELWAGHA50","sxml":""}