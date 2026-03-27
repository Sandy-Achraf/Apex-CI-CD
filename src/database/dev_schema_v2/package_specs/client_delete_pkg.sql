create or replace package wksp_elwagha50.client_delete_pkg as
    procedure delete_user (
        p_token      in varchar2,
        p_debug_json out clob
    );

end client_delete_pkg;
/


-- sqlcl_snapshot {"hash":"51fa9cd7612cd63d0ed6f112804b3a6f405315df","type":"PACKAGE_SPEC","name":"CLIENT_DELETE_PKG","schemaName":"WKSP_ELWAGHA50","sxml":""}