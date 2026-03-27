create or replace package dev_schema_v2.reservation_doc_api as
    procedure update_file_json (
        p_id       in number,
        p_json_id  in varchar2,
        p_filename in varchar2
    );

    procedure delete_file_json (
        p_reservation_id in varchar2,
        p_doc_id         in varchar2,
        p_json_id        in varchar2 default null
    );

end reservation_doc_api;
/


-- sqlcl_snapshot {"hash":"fd814331e8e15cf9c94638a2c338cf0484e27afa","type":"PACKAGE_SPEC","name":"RESERVATION_DOC_API","schemaName":"DEV_SCHEMA_V2","sxml":""}