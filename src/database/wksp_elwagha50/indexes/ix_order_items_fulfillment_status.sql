create index wksp_elwagha50.ix_order_items_fulfillment_status on
    wksp_elwagha50.order_items (
        fulfillment_status
    );


-- sqlcl_snapshot {"hash":"4d1782b4730d2c7d02349e9039455a628e95e9fa","type":"INDEX","name":"IX_ORDER_ITEMS_FULFILLMENT_STATUS","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IX_ORDER_ITEMS_FULFILLMENT_STATUS</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>ORDER_ITEMS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>FULFILLMENT_STATUS</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}