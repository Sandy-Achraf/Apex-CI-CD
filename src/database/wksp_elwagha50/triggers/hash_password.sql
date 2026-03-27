create or replace editionable trigger wksp_elwagha50.hash_password before
    insert or update of password_hash on wksp_elwagha50.bs_employees
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

alter trigger wksp_elwagha50.hash_password enable;


-- sqlcl_snapshot {"hash":"01553f07b5626957043ab5af007ef3c73dc45ccf","type":"TRIGGER","name":"HASH_PASSWORD","schemaName":"WKSP_ELWAGHA50","sxml":""}