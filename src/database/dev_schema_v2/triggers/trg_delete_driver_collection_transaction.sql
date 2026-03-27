create or replace editionable trigger wksp_elwagha50.trg_delete_driver_collection_transaction before
    delete on wksp_elwagha50.limo_trip_collections
    for each row
declare
    v_transaction_id transactions.transaction_id%type;
begin
    -- Only for driver cash collections
    if (
        :old.collected_by_type = 'DRIVER'
        and :old.collection_method = 'CASH'
    ) then
        for rec in (
            select
                transaction_id
            from
                transactions
            where
                reference_number = :old.collection_id
        ) loop
            delete from transaction_entries
            where
                transaction_id = rec.transaction_id;

            delete from transactions
            where
                transaction_id = rec.transaction_id;

        end loop;

    end if;
end;
/

alter trigger wksp_elwagha50.trg_delete_driver_collection_transaction enable;


-- sqlcl_snapshot {"hash":"3835986094b425d9e94fb11fab5fc1574e7d8d64","type":"TRIGGER","name":"TRG_DELETE_DRIVER_COLLECTION_TRANSACTION","schemaName":"WKSP_ELWAGHA50","sxml":""}