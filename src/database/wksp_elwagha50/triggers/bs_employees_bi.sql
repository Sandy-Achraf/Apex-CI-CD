create or replace editionable trigger wksp_elwagha50.bs_employees_bi before
    insert on wksp_elwagha50.bs_employees
    for each row
begin
    if :new.id is null then
        :new.id := 'EMP-'
                   || lpad(bs_employees_seq.nextval, 5, '0');

    end if;
end;
/

alter trigger wksp_elwagha50.bs_employees_bi enable;


-- sqlcl_snapshot {"hash":"5003e87d8b86403e6af59be4c95006b0da663920","type":"TRIGGER","name":"BS_EMPLOYEES_BI","schemaName":"WKSP_ELWAGHA50","sxml":""}