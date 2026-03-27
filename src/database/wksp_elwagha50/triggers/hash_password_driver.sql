create or replace editionable trigger wksp_elwagha50.hash_password_driver before
    insert or update of password_hash on wksp_elwagha50.company_drivers
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

alter trigger wksp_elwagha50.hash_password_driver enable;


-- sqlcl_snapshot {"hash":"c4ed0fdf63a7e7ca7800bb22e4ff94a4d5422b13","type":"TRIGGER","name":"HASH_PASSWORD_DRIVER","schemaName":"WKSP_ELWAGHA50","sxml":""}