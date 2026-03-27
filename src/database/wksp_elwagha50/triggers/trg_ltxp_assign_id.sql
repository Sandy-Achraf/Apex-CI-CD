create or replace editionable trigger wksp_elwagha50.trg_ltxp_assign_id before
    insert on wksp_elwagha50.limo_trip_expenses
    for each row
begin
    if :new.expense_id is null then
        :new.expense_id := 'TRIPEXP-' || seq_limo_trip_expense.nextval;
    end if;
end;
/

alter trigger wksp_elwagha50.trg_ltxp_assign_id enable;


-- sqlcl_snapshot {"hash":"95cab1a013c98651675447f83a1469c22a18d1e4","type":"TRIGGER","name":"TRG_LTXP_ASSIGN_ID","schemaName":"WKSP_ELWAGHA50","sxml":""}