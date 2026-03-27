create or replace editionable trigger wksp_elwagha50.trg_drive_items_biur before
    insert or update on wksp_elwagha50.drive_items
    for each row
declare
    v_user varchar2(100);
    v_ext  varchar2(10);
begin
    v_user := nvl(apex_application.g_user, user);
    if inserting then
    -- Default ITEM_TYPE
        if :new.item_type is null then
            :new.item_type := 'FOLDER';
        end if;

    -- Generate ITEM_ID
        if :new.item_id is null then
            :new.item_id :=
                case
                    when :new.item_type = 'FILE' then
                        'FI'
                        || to_char(drive_items_seq.nextval, 'FM000000')
                    else
                        'FL'
                        || to_char(drive_items_seq.nextval, 'FM000000')
                end;

        end if;

    -- Detect content type from file extension (if FILE)
        if
            :new.item_type = 'FILE'
            and :new.object_name is not null
        then
            v_ext := lower(regexp_substr(:new.object_name,
                                         '\.[^\.]+$',
                                         1,
                                         1));

            case v_ext
                when '.pdf' then
                    :new.content_type := 'application/pdf';
                when '.doc' then
                    :new.content_type := 'application/msword';
                when '.docx' then
                    :new.content_type := 'application/vnd.openxmlformats-officedocument.wordprocessingml.document';
                when '.xls' then
                    :new.content_type := 'application/vnd.ms-excel';
                when '.xlsx' then
                    :new.content_type := 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
                when '.png' then
                    :new.content_type := 'image/png';
                when '.jpg' then
                    :new.content_type := 'image/jpeg';
                when '.jpeg' then
                    :new.content_type := 'image/jpeg';
                when '.txt' then
                    :new.content_type := 'text/plain';
                else
                    :new.content_type := 'application/octet-stream';
            end case;

        end if;

        :new.created_by := nvl(:new.created_by,
                               v_user);
        :new.created_at := nvl(:new.created_at,
                               systimestamp);
    end if;

    if updating then
        :new.created_by := :old.created_by;
        :new.created_at := :old.created_at;
        :new.updated_by := v_user;
        :new.updated_at := systimestamp;
    end if;

end;
/

alter trigger wksp_elwagha50.trg_drive_items_biur enable;


-- sqlcl_snapshot {"hash":"b0fe5a17734e03e7f38ca760fd1e7871084bcfd0","type":"TRIGGER","name":"TRG_DRIVE_ITEMS_BIUR","schemaName":"WKSP_ELWAGHA50","sxml":""}