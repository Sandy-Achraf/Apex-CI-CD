create or replace editionable trigger wksp_elwagha50.hash_password_supplier before
    insert or update of password_hash on wksp_elwagha50.suppliers
    for each row
begin
    if inserting then
        :new.password_hash := security_pkg.get_hashing(p_text => :new.password_hash);

    elsif updating then
        if :new.password_hash != :old.password_hash then
            :new.password_hash := security_pkg.get_hashing(p_text => :new.password_hash);

        end if;
    end if;
end;
/

alter trigger wksp_elwagha50.hash_password_supplier enable;


-- sqlcl_snapshot {"hash":"f3efaf09552bfbd013907f3002ce2e22fedfb8e2","type":"TRIGGER","name":"HASH_PASSWORD_SUPPLIER","schemaName":"WKSP_ELWAGHA50","sxml":""}