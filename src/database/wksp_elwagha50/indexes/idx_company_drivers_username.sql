create unique index wksp_elwagha50.idx_company_drivers_username on
    wksp_elwagha50.company_drivers (
        username
    );


-- sqlcl_snapshot {"hash":"088aee3be5b45ca7dc95320e042e864b699173e9","type":"INDEX","name":"IDX_COMPANY_DRIVERS_USERNAME","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IDX_COMPANY_DRIVERS_USERNAME</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>COMPANY_DRIVERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>USERNAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}