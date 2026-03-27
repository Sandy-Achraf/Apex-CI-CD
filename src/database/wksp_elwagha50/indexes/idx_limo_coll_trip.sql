create index wksp_elwagha50.idx_limo_coll_trip on
    wksp_elwagha50.limo_trip_collections (
        trip_id
    );


-- sqlcl_snapshot {"hash":"856b7d267ffa58c46d90aae626d10771a0482fbb","type":"INDEX","name":"IDX_LIMO_COLL_TRIP","schemaName":"WKSP_ELWAGHA50","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n   <NAME>IDX_LIMO_COLL_TRIP</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_ELWAGHA50</SCHEMA>\n         <NAME>LIMO_TRIP_COLLECTIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>TRIP_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}