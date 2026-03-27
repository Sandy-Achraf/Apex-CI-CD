create or replace editionable trigger wksp_elwagha50.bi_client_contacts before
    insert on wksp_elwagha50.client_contacts
    for each row
begin
    if :new.contact_id is null then
        select
            client_contacts_seq.nextval
        into :new.contact_id
        from
            dual;

    end if;
end;
/

alter trigger wksp_elwagha50.bi_client_contacts enable;


-- sqlcl_snapshot {"hash":"a5b44f0f28f3444e761c8ffabca5d23ad9ffaa1f","type":"TRIGGER","name":"BI_CLIENT_CONTACTS","schemaName":"WKSP_ELWAGHA50","sxml":""}