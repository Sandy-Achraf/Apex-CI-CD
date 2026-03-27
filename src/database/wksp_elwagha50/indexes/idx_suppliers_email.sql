create index wksp_elwagha50.idx_suppliers_email on
    wksp_elwagha50.suppliers (
        email
    );


-- sqlcl_snapshot {"hash":"c3d2c42761a3f4855a5c5dfcea0618f6a22b39c8","type":"INDEX","name":"IDX_SUPPLIERS_EMAIL","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IDX_SUPPLIERS_EMAIL</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>SUPPLIERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EMAIL</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}