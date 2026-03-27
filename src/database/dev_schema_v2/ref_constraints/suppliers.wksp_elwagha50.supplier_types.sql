alter table wksp_elwagha50.suppliers
    add
        foreign key ( supplier_type_id )
            references wksp_elwagha50.supplier_types ( supplier_type_id )
        enable;


-- sqlcl_snapshot {"hash":"b9e24516dc6a6ca03e49173394fdba70b4c9e4b9","type":"REF_CONSTRAINT","name":"SUPPLIERS.WKSP_ELWAGHA50.SUPPLIER_TYPES","schemaName":"WKSP_ELWAGHA50","sxml":""}