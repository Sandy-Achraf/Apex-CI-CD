create unique index wksp_elwagha50.ux_invoice_one_discount on
    wksp_elwagha50.invoice_adjustments (
        case
            adjustment_type
            when 'DISCOUNT' then
                    invoice_id
            else
                null
        end
    );


-- sqlcl_snapshot {"hash":"61cdee801ed5bec6c3f4920d822c913f0bad89d9","type":"INDEX","name":"UX_INVOICE_ONE_DISCOUNT","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>UX_INVOICE_ONE_DISCOUNT</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>INVOICE_ADJUSTMENTS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>CASE \"ADJUSTMENT_TYPE\" WHEN 'DISCOUNT' THEN \"INVOICE_ID\" ELSE NULL END </DEFAULT_EXPRESSION>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}