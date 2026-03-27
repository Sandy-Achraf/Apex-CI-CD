create or replace package dev_schema_v2.client_delete_pkg as
    procedure delete_user (
        p_token      in varchar2,
        p_debug_json out clob
    );

end client_delete_pkg;
/


-- sqlcl_snapshot {"hash":"a555d981e4d687daf1632ce663d811a91c3bdf2f","type":"PACKAGE_SPEC","name":"CLIENT_DELETE_PKG","schemaName":"DEV_SCHEMA_V2","sxml":""}