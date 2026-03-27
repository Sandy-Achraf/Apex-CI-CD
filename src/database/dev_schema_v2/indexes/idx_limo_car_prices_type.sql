create index wksp_elwagha50.idx_limo_car_prices_type on
    wksp_elwagha50.limo_car_type_prices (
        car_type_id
    );


-- sqlcl_snapshot {"hash":"d6343ee87f3b5e7d1a64962b278a929de33b0d67","type":"INDEX","name":"IDX_LIMO_CAR_PRICES_TYPE","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IDX_LIMO_CAR_PRICES_TYPE</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>LIMO_CAR_TYPE_PRICES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CAR_TYPE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}