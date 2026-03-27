create unique index wksp_elwagha50.ux_curt_token on
    wksp_elwagha50.customer_user_refresh_tokens (
        refresh_token
    );


-- sqlcl_snapshot {"hash":"533541fb4efa8ae6edce4e4a04aa5c9556038052","type":"INDEX","name":"UX_CURT_TOKEN","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>UX_CURT_TOKEN</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>CUSTOMER_USER_REFRESH_TOKENS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>REFRESH_TOKEN</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}