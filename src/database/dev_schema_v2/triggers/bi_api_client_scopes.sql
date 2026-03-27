create or replace editionable trigger wksp_elwagha50.bi_api_client_scopes before
    insert on wksp_elwagha50.api_client_scopes
    for each row
begin
    if :new.id is null then
        select
            api_client_scopes_seq.nextval
        into :new.id
        from
            dual;

    end if;
end;
/

alter trigger wksp_elwagha50.bi_api_client_scopes enable;


-- sqlcl_snapshot {"hash":"5e64e7d8b90794b6cdbacdc12270b2df788bab12","type":"TRIGGER","name":"BI_API_CLIENT_SCOPES","schemaName":"WKSP_ELWAGHA50","sxml":""}