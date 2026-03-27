create unique index wksp_elwagha50.ux_fulfillment_statuses_stage_code on
    wksp_elwagha50.fulfillment_statuses (
        stage,
        status_code
    );


-- sqlcl_snapshot {"hash":"a1f23bd5b94ad9dd495be0345935491a38f48269","type":"INDEX","name":"UX_FULFILLMENT_STATUSES_STAGE_CODE","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>UX_FULFILLMENT_STATUSES_STAGE_CODE</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>FULFILLMENT_STATUSES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>STAGE</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>STATUS_CODE</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}