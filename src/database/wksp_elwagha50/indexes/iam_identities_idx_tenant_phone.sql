create index wksp_elwagha50.iam_identities_idx_tenant_phone on
    wksp_elwagha50.iam_identities (
        tenant_id,
        phone_number
    );


-- sqlcl_snapshot {"hash":"1f1f3716ddff9161d9fd63fb0dbd4974cfb8a5aa","type":"INDEX","name":"IAM_IDENTITIES_IDX_TENANT_PHONE","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IAM_IDENTITIES_IDX_TENANT_PHONE</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>IAM_IDENTITIES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>TENANT_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>PHONE_NUMBER</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}