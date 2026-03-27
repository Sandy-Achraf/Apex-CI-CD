create or replace editionable trigger wksp_elwagha50.trg_transactions_id before
    insert on wksp_elwagha50.transactions
    for each row
begin
    if :new.transaction_id is null then
        :new.transaction_id := transactions_seq.nextval;
    end if;
end;
/

alter trigger wksp_elwagha50.trg_transactions_id enable;


-- sqlcl_snapshot {"hash":"55121eb0a2ea5cca2d4f5591587afeb6745f0c9f","type":"TRIGGER","name":"TRG_TRANSACTIONS_ID","schemaName":"WKSP_ELWAGHA50","sxml":""}