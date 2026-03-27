create or replace editionable trigger wksp_elwagha50.trg_expense_delete_sync_txn after
    delete on wksp_elwagha50.limo_trip_expenses
    for each row
begin
    -- Just delete the transaction for this reference number
    for rec in (
        select
            transaction_id
        from
            transactions
        where
            reference_number = :old.expense_id
    ) loop
        delete from transaction_entries
        where
            transaction_id = rec.transaction_id;

        delete from transactions
        where
            transaction_id = rec.transaction_id;

    end loop;
end;
/

alter trigger wksp_elwagha50.trg_expense_delete_sync_txn enable;


-- sqlcl_snapshot {"hash":"fa0ad5258d4d7c96677259902692f3a659ee2f73","type":"TRIGGER","name":"TRG_EXPENSE_DELETE_SYNC_TXN","schemaName":"WKSP_ELWAGHA50","sxml":""}