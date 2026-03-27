create or replace package dev_schema_v2.app_config as
    g_default_bucket constant varchar2(400) := 'ElWagha_ObjectStorage';
    g_credential_id constant varchar2(100) := 'o_storagekey';
end app_config;
/


-- sqlcl_snapshot {"hash":"200fc6c0622b6bff81e892a7ef3be7728318ca7f","type":"PACKAGE_SPEC","name":"APP_CONFIG","schemaName":"DEV_SCHEMA_V2","sxml":""}