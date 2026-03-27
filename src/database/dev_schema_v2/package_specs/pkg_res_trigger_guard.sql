create or replace package dev_schema_v2.pkg_res_trigger_guard as
    g_running boolean := false;
end pkg_res_trigger_guard;
/


-- sqlcl_snapshot {"hash":"fbe55f6289f88e4225ef8f024c2bdaa3a4e4f0ab","type":"PACKAGE_SPEC","name":"PKG_RES_TRIGGER_GUARD","schemaName":"DEV_SCHEMA_V2","sxml":""}