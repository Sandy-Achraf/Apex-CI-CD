create or replace package wksp_elwagha50.car_api as
    procedure create_car_zip (
        p_car_id in varchar2
    );

end car_api;
/


-- sqlcl_snapshot {"hash":"6e7d48f4f2476c1aeb1c03830a5e2d59be8deaf2","type":"PACKAGE_SPEC","name":"CAR_API","schemaName":"WKSP_ELWAGHA50","sxml":""}