create index wksp_elwagha50.ix_api_client_tokens_client on
    wksp_elwagha50.api_client_tokens (
        client_id
    );


-- sqlcl_snapshot {"hash":"25192cec0915493f91338f783bcc80010f6e6214","type":"INDEX","name":"IX_API_CLIENT_TOKENS_CLIENT","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IX_API_CLIENT_TOKENS_CLIENT</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>API_CLIENT_TOKENS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CLIENT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}