create index wksp_elwagha50.ix_iam_users_tenant on
    wksp_elwagha50.iam_users (
        tenant_id
    );


-- sqlcl_snapshot {"hash":"6ce03064f55e95ac30b91af54d63b651316e4e96","type":"INDEX","name":"IX_IAM_USERS_TENANT","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IX_IAM_USERS_TENANT</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>IAM_USERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>TENANT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}