alter table wksp_elwagha50.currency_rates
    add
        foreign key ( currency_code )
            references wksp_elwagha50.currencies ( currency_code )
        enable;


-- sqlcl_snapshot {"hash":"a00fc7fc73e4dccf7ceb4703747e25a2ad48defc","type":"REF_CONSTRAINT","name":"CURRENCY_RATES.WKSP_ELWAGHA50.CURRENCIES","schemaName":"WKSP_ELWAGHA50","sxml":""}