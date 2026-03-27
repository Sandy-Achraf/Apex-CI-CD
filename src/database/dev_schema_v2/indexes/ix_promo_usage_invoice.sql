create index wksp_elwagha50.ix_promo_usage_invoice on
    wksp_elwagha50.promo_usage (
        invoice_id
    );


-- sqlcl_snapshot {"hash":"da3b1993b28dffef2b40f69a7ca8e8e54c660f93","type":"INDEX","name":"IX_PROMO_USAGE_INVOICE","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IX_PROMO_USAGE_INVOICE</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>PROMO_USAGE</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>INVOICE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}