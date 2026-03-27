create index wksp_elwagha50.ix_lpa_product on
    wksp_elwagha50.limo_product_assignments (
        product_id
    );


-- sqlcl_snapshot {"hash":"a84331a7cf72944fadd4a00e4dc83c83edb65a4b","type":"INDEX","name":"IX_LPA_PRODUCT","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IX_LPA_PRODUCT</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>LIMO_PRODUCT_ASSIGNMENTS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>PRODUCT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}