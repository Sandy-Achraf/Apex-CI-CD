create or replace package wksp_elwagha50.reservation_doc_api as
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


-- sqlcl_snapshot {"hash":"5e9d3fad4e6dfdc27243ae00cbdbc020b6adcdf1","type":"PACKAGE_SPEC","name":"RESERVATION_DOC_API","schemaName":"WKSP_ELWAGHA50","sxml":""}