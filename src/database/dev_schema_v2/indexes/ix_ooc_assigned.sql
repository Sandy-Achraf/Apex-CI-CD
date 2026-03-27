create index wksp_elwagha50.ix_ooc_assigned on
    wksp_elwagha50.ops_orders_current (
        assigned_to_name
    );


-- sqlcl_snapshot {"hash":"8b03dadb5e7c6e413ed9b27b718b5b7efaf6b854","type":"INDEX","name":"IX_OOC_ASSIGNED","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IX_OOC_ASSIGNED</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>OPS_ORDERS_CURRENT</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ASSIGNED_TO_NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}