create unique index wksp_elwagha50.ux_iam_tenants_code on
    wksp_elwagha50.iam_tenants ( upper(tenant_code) );


-- sqlcl_snapshot {"hash":"a5cc601124d7b2296d20c8482f892c77a8ba7633","type":"INDEX","name":"UX_IAM_TENANTS_CODE","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>UX_IAM_TENANTS_CODE</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>IAM_TENANTS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>UPPER(\"TENANT_CODE\")</DEFAULT_EXPRESSION>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}