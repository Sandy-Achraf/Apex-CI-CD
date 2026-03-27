create or replace editionable trigger wksp_elwagha50.lpa_bi_assignment_id before
    insert on wksp_elwagha50.limo_product_assignments
    for each row
begin
    if :new.assignment_id is null then
        :new.assignment_id := 'LPA-' || limo_assign_id_seq.nextval;
    end if;
end;
/

alter trigger wksp_elwagha50.lpa_bi_assignment_id enable;


-- sqlcl_snapshot {"hash":"e3b19cabdf53fe189bbee8e5dac89a5f0553b349","type":"TRIGGER","name":"LPA_BI_ASSIGNMENT_ID","schemaName":"WKSP_ELWAGHA50","sxml":""}