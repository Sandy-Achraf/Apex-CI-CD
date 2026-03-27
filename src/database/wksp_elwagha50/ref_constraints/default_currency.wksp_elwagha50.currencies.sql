alter table wksp_elwagha50.default_currency
    add
        foreign key ( currency_code )
            references wksp_elwagha50.currencies ( currency_code )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"4ccc401e27d268c3ec4bed83bfba46b636ff3150","type":"REF_CONSTRAINT","name":"DEFAULT_CURRENCY.WKSP_ELWAGHA50.CURRENCIES","schemaName":"WKSP_ELWAGHA50","sxml":""}