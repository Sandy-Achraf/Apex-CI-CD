alter table wksp_elwagha50.limo_reservations
    add constraint fk_limo_sales
        foreign key ( sales_rep_id )
            references wksp_elwagha50.bs_employees ( id )
        enable;


-- sqlcl_snapshot {"hash":"c3494023d835d2f41be947e0c55f9ad171811af0","type":"REF_CONSTRAINT","name":"FK_LIMO_SALES","schemaName":"WKSP_ELWAGHA50","sxml":""}