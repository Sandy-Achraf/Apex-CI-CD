create or replace package wksp_elwagha50.limo_acc_recalc_q as
    procedure add_trip (
        p_trip_id in varchar2
    );

    procedure add_assignment (
        p_assignment_id in varchar2
    );

    procedure flush;

end limo_acc_recalc_q;
/


-- sqlcl_snapshot {"hash":"b32064d647cf053492cb0f4ad0751189f200fc4d","type":"PACKAGE_SPEC","name":"LIMO_ACC_RECALC_Q","schemaName":"WKSP_ELWAGHA50","sxml":""}