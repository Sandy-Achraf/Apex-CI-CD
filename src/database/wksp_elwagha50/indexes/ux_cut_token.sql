create unique index wksp_elwagha50.ux_cut_token on
    wksp_elwagha50.customer_user_tokens (
        access_token
    );


-- sqlcl_snapshot {"hash":"fcf9c3f2d10021b912d31d77827260858ebef408","type":"INDEX","name":"UX_CUT_TOKEN","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>UX_CUT_TOKEN</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>CUSTOMER_USER_TOKENS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACCESS_TOKEN</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}