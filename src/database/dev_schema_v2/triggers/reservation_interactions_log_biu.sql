create or replace editionable trigger wksp_elwagha50.reservation_interactions_log_biu before
    insert or update on wksp_elwagha50.reservation_interactions_log
    for each row
begin
    :new.page_rendered := systimestamp;

    -- Get current logged-in user ID from APEX session state
    if :new.user_id is null then
        :new.user_id := to_number ( apex_util.get_session_state('APP_USER_ID') );
    end if;

end;
/

alter trigger wksp_elwagha50.reservation_interactions_log_biu enable;


-- sqlcl_snapshot {"hash":"7d94ec26c75848982efd6223eb77ab563dda08bf","type":"TRIGGER","name":"RESERVATION_INTERACTIONS_LOG_BIU","schemaName":"WKSP_ELWAGHA50","sxml":""}