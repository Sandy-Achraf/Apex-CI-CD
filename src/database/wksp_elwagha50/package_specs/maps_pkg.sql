create or replace package wksp_elwagha50.maps_pkg as
    procedure compute_route_by_place_id (
        p_from_place_id in varchar2,
        p_to_place_id   in varchar2,
        o_distance_km   out number,
        o_duration_min  out number,
        o_raw_json      out clob
    );

end maps_pkg;
/


-- sqlcl_snapshot {"hash":"c891a4e812f79f04b7d9bac42dd465edadeb6d0d","type":"PACKAGE_SPEC","name":"MAPS_PKG","schemaName":"WKSP_ELWAGHA50","sxml":""}