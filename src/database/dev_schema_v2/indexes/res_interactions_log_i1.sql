create index wksp_elwagha50.res_interactions_log_i1 on
    wksp_elwagha50.reservation_interactions_log (
        reservation_id
    );


-- sqlcl_snapshot {"hash":"5f7144b259c85f5708101293bb9f477055202380","type":"INDEX","name":"RES_INTERACTIONS_LOG_I1","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>RES_INTERACTIONS_LOG_I1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>RESERVATION_INTERACTIONS_LOG</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>RESERVATION_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}