create or replace package wksp_elwagha50.limo_trip_pkg as
    procedure start_trip (
        p_product_id    in varchar2,
        p_assignment_id in varchar2,
        p_driver_id     in varchar2,
        p_used_car_id   in varchar2,
        p_executed_day  in date,
        p_created_by    in varchar2,
        p_trip_id       out varchar2
    );

end limo_trip_pkg;
/


-- sqlcl_snapshot {"hash":"3d25e33e1e751fc80e6285c0cb2da4a9dbd89bfa","type":"PACKAGE_SPEC","name":"LIMO_TRIP_PKG","schemaName":"WKSP_ELWAGHA50","sxml":""}