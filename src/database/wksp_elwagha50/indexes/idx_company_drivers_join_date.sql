create index wksp_elwagha50.idx_company_drivers_join_date on
    wksp_elwagha50.company_drivers (
        join_date
    );


-- sqlcl_snapshot {"hash":"1b813d7e7b12d692513e63c0a88c7ef9fea91ecc","type":"INDEX","name":"IDX_COMPANY_DRIVERS_JOIN_DATE","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IDX_COMPANY_DRIVERS_JOIN_DATE</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>COMPANY_DRIVERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>JOIN_DATE</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}