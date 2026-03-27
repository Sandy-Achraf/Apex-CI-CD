alter table wksp_elwagha50.limo_product_assignments
    add constraint lpa_created_by_fk
        foreign key ( created_by )
            references wksp_elwagha50.bs_employees ( id )
        disable;


-- sqlcl_snapshot {"hash":"b6e43787b277a0931428679f1f4f53dcf03f712e","type":"REF_CONSTRAINT","name":"LPA_CREATED_BY_FK","schemaName":"WKSP_ELWAGHA50","sxml":""}