create index wksp_elwagha50.ix_ops_err_item on
    wksp_elwagha50.ops_sync_errors (
        order_item_id
    );


-- sqlcl_snapshot {"hash":"852814c454c64d50edec08c279e22a5f8092af8c","type":"INDEX","name":"IX_OPS_ERR_ITEM","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IX_OPS_ERR_ITEM</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>OPS_SYNC_ERRORS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ORDER_ITEM_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}