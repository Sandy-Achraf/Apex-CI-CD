create index wksp_elwagha50.idx_lctp_special_check on
    wksp_elwagha50.limo_car_type_prices (
        car_type_id,
        is_special,
    sys_extract_utc(start_date) );


-- sqlcl_snapshot {"hash":"8a892a388e3cd65e93a231b7be3c882a07596c5a","type":"INDEX","name":"IDX_LCTP_SPECIAL_CHECK","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IDX_LCTP_SPECIAL_CHECK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>LIMO_CAR_TYPE_PRICES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CAR_TYPE_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>IS_SPECIAL</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>SYS_EXTRACT_UTC(\"START_DATE\")</DEFAULT_EXPRESSION>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}