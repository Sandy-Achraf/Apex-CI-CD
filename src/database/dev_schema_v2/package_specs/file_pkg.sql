create or replace package dev_schema_v2.file_pkg as
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


-- sqlcl_snapshot {"hash":"72d7865d6013b0d1263f3ed1f81c7c82aedf8bb2","type":"PACKAGE_SPEC","name":"FILE_PKG","schemaName":"DEV_SCHEMA_V2","sxml":""}