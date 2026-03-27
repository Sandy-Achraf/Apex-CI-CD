create or replace package wksp_elwagha50.photo_util is
    procedure manage_record (
        p_action      in varchar2,             -- 'INSERT','UPDATE','DELETE'
        p_table_name  in varchar2,             -- e.g. 'SUPPLIERS'
        p_id_column   in varchar2,             -- e.g. 'SUPPLIER_ID'
        p_id_value    in out varchar2,         -- returns ID on insert
        p_fields      in apex_t_varchar2,      -- optional column names
        p_values      in apex_t_varchar2,      -- optional values
        p_page_item   in varchar2,             -- file item name
        p_folder_name in varchar2,             -- folder in Object Storage
        p_url_column  in varchar2 default 'PHOTO_URL',
        p_date_column in varchar2 default 'PHOTO_LAST_UPDATED'
    );

end photo_util;
/


-- sqlcl_snapshot {"hash":"a84be200ba50dbcecba44fdba79d65c0549b9e7c","type":"PACKAGE_SPEC","name":"PHOTO_UTIL","schemaName":"WKSP_ELWAGHA50","sxml":""}