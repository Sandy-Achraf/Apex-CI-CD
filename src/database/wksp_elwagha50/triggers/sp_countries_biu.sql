create or replace editionable trigger wksp_elwagha50.sp_countries_biu before
    insert or update on wksp_elwagha50.sp_countries
    for each row
begin
    if inserting then
        :new.created := localtimestamp;
        :new.created_by := nvl(wwv_flow.g_user, user);
        :new.updated := localtimestamp;
        :new.updated_by := nvl(wwv_flow.g_user, user);
    end if;

    if inserting
    or updating then
        :new.updated := localtimestamp;
        :new.updated_by := nvl(wwv_flow.g_user, user);
    end if;

    if :new.display_yn is null then
        :new.display_yn := 'Y';
    end if;

    if :new.quick_pick_yn is null then
        :new.quick_pick_yn := 'N';
    end if;

end sp_countries_biu;
/

alter trigger wksp_elwagha50.sp_countries_biu enable;


-- sqlcl_snapshot {"hash":"eba34739b42996901b71a64d557c4f121de8004c","type":"TRIGGER","name":"SP_COUNTRIES_BIU","schemaName":"WKSP_ELWAGHA50","sxml":""}