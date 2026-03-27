create or replace package wksp_elwagha50.limo_driver_settlement_pkg as
    procedure create_driver_settlement (
        p_driver_id     in varchar2,
        p_settlement_id out varchar2
    );

end limo_driver_settlement_pkg;
/


-- sqlcl_snapshot {"hash":"dbc5b73bf0476eb0f0244c20fc416b4495395868","type":"PACKAGE_SPEC","name":"LIMO_DRIVER_SETTLEMENT_PKG","schemaName":"WKSP_ELWAGHA50","sxml":""}