create or replace package wksp_elwagha50.file_pkg as
    type t_file_result is record (
            object_name    varchar2(1000),
            file_name      varchar2(255),
            response       blob,
            mime_type      varchar2(255),
            content_length number,
            etag           varchar2(255),
            last_modified  varchar2(255),
            status_code    number
    );
    function download_folder_zip (
        p_folder_prefix in varchar2
    ) return t_file_result;

end file_pkg;
/


-- sqlcl_snapshot {"hash":"0aa010d671d39a23ed44c7d8c5d61743a01a468d","type":"PACKAGE_SPEC","name":"FILE_PKG","schemaName":"WKSP_ELWAGHA50","sxml":""}