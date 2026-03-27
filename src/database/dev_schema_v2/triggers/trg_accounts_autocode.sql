create or replace editionable trigger wksp_elwagha50.trg_accounts_autocode before
    insert on wksp_elwagha50.accounts
    for each row
begin
  -- Only generate ACCOUNT_CODE if it was left null
    if :new.account_code is null then
        :new.account_code := 'ACC-'
                             || lpad(:new.account_id,
                                     6,
                                     '0');

    end if;
end;
/

alter trigger wksp_elwagha50.trg_accounts_autocode enable;


-- sqlcl_snapshot {"hash":"b9ec1e9858eca3aab7a29ec41dfeaaf24c45e1c5","type":"TRIGGER","name":"TRG_ACCOUNTS_AUTOCODE","schemaName":"WKSP_ELWAGHA50","sxml":""}