create or replace package wksp_elwagha50.reservation_log as
    procedure log_interaction (
        p_reservation_id in varchar2,
        p_type           in varchar2
    );

    function log_and_summarize (
        p_reservation_id in varchar2,
        p_type           in varchar2
    ) return varchar2;

end reservation_log;
/


-- sqlcl_snapshot {"hash":"dd77d92d91e6533101e69de612146a4d6cbadcbf","type":"PACKAGE_SPEC","name":"RESERVATION_LOG","schemaName":"WKSP_ELWAGHA50","sxml":""}