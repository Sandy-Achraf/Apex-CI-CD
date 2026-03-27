create index wksp_elwagha50.ix_invoice_payments_inv on
    wksp_elwagha50.invoice_payments (
        invoice_id
    );


-- sqlcl_snapshot {"hash":"922d96a02276f44c7812b617dd2a0161ecca43cc","type":"INDEX","name":"IX_INVOICE_PAYMENTS_INV","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IX_INVOICE_PAYMENTS_INV</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>INVOICE_PAYMENTS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>INVOICE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}