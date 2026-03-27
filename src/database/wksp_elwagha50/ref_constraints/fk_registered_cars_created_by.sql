alter table wksp_elwagha50.company_registered_cars
    add constraint fk_registered_cars_created_by
        foreign key ( created_by )
            references wksp_elwagha50.bs_employees ( id )
        disable;


-- sqlcl_snapshot {"hash":"bb603a9e1f80196c20b2307200ba08cd6a26e311","type":"REF_CONSTRAINT","name":"FK_REGISTERED_CARS_CREATED_BY","schemaName":"WKSP_ELWAGHA50","sxml":""}