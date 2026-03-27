create or replace editionable trigger wksp_elwagha50.bi_client_events before
    insert on wksp_elwagha50.client_events
    for each row
begin
    if :new.event_id is null then
        select
            client_events_seq.nextval
        into :new.event_id
        from
            dual;

    end if;
end;
/

alter trigger wksp_elwagha50.bi_client_events enable;


-- sqlcl_snapshot {"hash":"702e5b76334866381a1c4e60106ba28b8a744390","type":"TRIGGER","name":"BI_CLIENT_EVENTS","schemaName":"WKSP_ELWAGHA50","sxml":""}