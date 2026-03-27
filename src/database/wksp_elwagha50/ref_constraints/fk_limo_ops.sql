alter table wksp_elwagha50.limo_reservations
    add constraint fk_limo_ops
        foreign key ( ops_rep_id )
            references wksp_elwagha50.bs_employees ( id )
        enable;


-- sqlcl_snapshot {"hash":"a0214a7356ec17303651762123503c1f31811f06","type":"REF_CONSTRAINT","name":"FK_LIMO_OPS","schemaName":"WKSP_ELWAGHA50","sxml":""}