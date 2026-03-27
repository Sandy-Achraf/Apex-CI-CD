create index wksp_elwagha50.ix_invoice_adj_invoice on
    wksp_elwagha50.invoice_adjustments (
        invoice_id
    );


-- sqlcl_snapshot {"hash":"e6939db692083d6a687c8df2c14e2e9c186ca658","type":"INDEX","name":"IX_INVOICE_ADJ_INVOICE","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IX_INVOICE_ADJ_INVOICE</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>INVOICE_ADJUSTMENTS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>INVOICE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}