create or replace editionable trigger wksp_elwagha50.trg_ft_service_prices_audit before
    insert or update on wksp_elwagha50.fast_track_service_prices
    for each row
begin
    if inserting then
        if :new.created is null then
            :new.created := current_timestamp;
        end if;

        if :new.created_by is null then
            :new.created_by := nvl(
                apex_util.get_session_state('APP_USER_FULLNAME'),  -- preferred: full name
                nvl(
                                apex_util.get_session_state('APP_USER_ID'),   -- fallback: app user id
                                user
                            )                                        -- fallback: db user
            );

        end if;

    end if;

    :new.updated := current_timestamp;
    :new.updated_by := nvl(
        apex_util.get_session_state('APP_USER_FULLNAME'),
        nvl(
                apex_util.get_session_state('APP_USER_ID'),
                user
            )
    );

end;
/

alter trigger wksp_elwagha50.trg_ft_service_prices_audit enable;


-- sqlcl_snapshot {"hash":"36cf2f932bb840fd4d55e1361dba8f65b5ab0385","type":"TRIGGER","name":"TRG_FT_SERVICE_PRICES_AUDIT","schemaName":"WKSP_ELWAGHA50","sxml":""}