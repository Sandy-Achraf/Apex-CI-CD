create index wksp_elwagha50.idx_clients_country on
    wksp_elwagha50.clients (
        phone_country_code
    );


-- sqlcl_snapshot {"hash":"76082d15f3df6bf0246c7147135c53c8c99c74be","type":"INDEX","name":"IDX_CLIENTS_COUNTRY","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IDX_CLIENTS_COUNTRY</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>CLIENTS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>PHONE_COUNTRY_CODE</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}