create index wksp_elwagha50.ix_curt_user on
    wksp_elwagha50.customer_user_refresh_tokens (
        user_id
    );


-- sqlcl_snapshot {"hash":"1df8e4172f8238eb5cbef749521b4f3b552e683d","type":"INDEX","name":"IX_CURT_USER","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IX_CURT_USER</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>CUSTOMER_USER_REFRESH_TOKENS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>USER_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}