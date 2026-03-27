create or replace package wksp_elwagha50.app_config as
    g_default_bucket constant varchar2(400) := 'ElWagha_ObjectStorage';
    g_credential_id constant varchar2(100) := 'o_storagekey';
end app_config;
/


-- sqlcl_snapshot {"hash":"7b5502c91342f14671d0f2df7f4b0484cb75a261","type":"PACKAGE_SPEC","name":"APP_CONFIG","schemaName":"WKSP_ELWAGHA50","sxml":""}